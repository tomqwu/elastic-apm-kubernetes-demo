import { BrowserModule } from '@angular/platform-browser';
import { NgModule, Inject } from '@angular/core';
import { AppRoutingModule } from './app-routing.module';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { AppComponent } from './app.component';
import { UserListComponent } from './user-list/user-list.component';
import { UserFormComponent } from './user-form/user-form.component';
import { UserService } from './service/user.service';
import { ApmService } from '@elastic/apm-rum-angular';
import { environment } from '../environments/environment'

@NgModule({
  declarations: [
    AppComponent,
    UserListComponent,
    UserFormComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [UserService, { provide: ApmService, useClass: ApmService }],
  bootstrap: [AppComponent]
})

export class AppModule {
  constructor(@Inject(ApmService) service: ApmService) {
    // API is exposed through this apm instance
    const apm = service.init({
      serviceName: 'angular-app',
      serverUrl: environment.apmUrl
    })

    apm.setUserContext({
      'username': 'foo',
      'id': 'bar'
    })
  }
}
