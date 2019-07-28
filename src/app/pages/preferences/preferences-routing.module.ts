import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PreferencesComponent } from './preferences.component';
import { ViewComponent } from './view/view.component';

const routes: Routes = [
  {
    path: 'preferences',
    component: PreferencesComponent,
    children: [
      {
        path: 'main',
        children: [
          {
            path: '',
            component: ViewComponent,
          }
        ]
      },
      {
        path: '',
        redirectTo: '/app/preferences',
        pathMatch: 'full'
      }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class PreferencesPageRoutingModule { }

