import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { TablesComponent } from './tables.component';
const routes: Routes = [
  
    {
      path: '',
      redirectTo: 'Book',
      pathMatch: 'full',
    },{
        path: 'Book',
        component: TablesComponent,
        data: {
          title: 'Book'
        }
      // },

    // ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class BaseRoutingModule {}
