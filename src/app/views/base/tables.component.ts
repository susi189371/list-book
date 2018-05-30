import { Component, ViewChild } from '@angular/core';
import { ModalDirective } from 'ngx-bootstrap/modal';
import { Injectable } from '@angular/core';
import { Http, Response, Headers, RequestOptions } from '@angular/http';
import 'rxjs/add/operator/map';
import { Observable, Subscription } from 'rxjs/Rx';

@Component({
  templateUrl: 'tables.component.html'
})
export class TablesComponent {
  public data: Subscription;
  public dataSelect;
  public primaryModal;
  public successModal;
  public items;
  public params = null;
  constructor(
    private http: Http,
  ) { }


  service() {
    let getData = this.http.get('http://127.0.0.1:8989/getall');
    return getData.map(res => { return res.json(); })
  }

  delete(id) {
    let getData = this.http.get('http://127.0.0.1:8989/Delete/' + id);
    return getData.map(res => {})
  }

  select(id) {
    let getData = this.http.get('http://127.0.0.1:8989/getallID/' + id);
    return getData.map(res => { return res.json(); })
  }

  update(id, title, author, DP, NP, TP){
    let params = [];
    let headers = new Headers({ 'Content-Type': 'application/json ' });
    let options = new RequestOptions({ headers: headers });
    if (id) { params.push('id=' + id); }
    if (title) { params.push('title=' + title); }
    if (author) { params.push('author=' + author); }
    if (DP) { params.push('date_published=' + DP); }
    if (NP) { params.push('number_of_page=' + NP); }
    if (TP) { params.push('type_of_page=' + TP); }
    let url = 'http://127.0.0.1:8989/Update?' + params.join('&');
    // return this.http.post(url, params, options).map(res => res.json() , { responseType: 'text' });
    return this.http.post(url, params, options);
  }

  insert(id, title, author, DP, NP, TP){
    let params = [];
    let headers = new Headers({ 'Content-Type': 'application/json' });
    let options = new RequestOptions({ headers: headers });
    if (id) { params.push('id=' + id); }
    if (title) { params.push('title=' + title); }
    if (author) { params.push('author=' + author); }
    if (DP) { params.push('date_published=' + DP); }
    if (NP) { params.push('number_of_page=' + NP); }
    if (TP) { params.push('type_of_page=' + TP); }
    let url = 'http://127.0.0.1:8989/Insert?' + params.join('&');
    // return this.http.post(url, params, options).map(res => res.json() , { responseType: 'text' });
    return this.http.post(url, params, options);
  }

  ngOnInit() {
    this.data = this.service().subscribe(res => {
      this.items = res;
      console.log("items",this.items)
    })
  }

  deleteData(id) {
    this.data = this.delete(id).subscribe(res => {
      console.log("res",res)
      this.ngOnInit();
    })
  }

  Edit(id) {
    this.data = this.select(id).subscribe(res => {
      this.dataSelect = res;
    })
  }

  ChangeData(id, title, author, DP, NP, TP) {
    this.data = this.update(id, title, author, DP, NP, TP).subscribe(res => {
      if(res.status){
        this.ngOnInit();
      }
    })
  }

  CreateData(id, title, author, DP, NP, TP) {
    this.data = this.insert(id, title, author, DP, NP, TP).subscribe(res => {
      if(res.status){
        this.ngOnInit();
        this.params = null;
      }
    })

  }

  
  
}





