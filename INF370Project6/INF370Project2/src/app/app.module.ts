import { CUSTOM_ELEMENTS_SCHEMA, NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';


import { ReactiveFormsModule,FormsModule } from '@angular/forms';
import {HttpClientModule} from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import {MatSidenavModule} from '@angular/material/sidenav';
import {MatToolbarModule} from '@angular/material/toolbar';
import {MatButtonModule} from '@angular/material/button';
import {MatIconModule} from '@angular/material/icon'; 
import {MatDividerModule} from '@angular/material/divider';
import { HomeComponent } from './home/home.component';
import { ProjectsComponent } from './project/projects/projects.component';

import { CompleteProjectComponent } from './project/complete-project/complete-project.component'; 

import { MatMenuModule } from '@angular/material/menu';
import {MatTableModule} from '@angular/material/table';
import {MatDatepickerModule} from '@angular/material/datepicker';
import { MatNativeDateModule } from '@angular/material/core';
import {MatFormFieldModule} from '@angular/material/form-field';
import {MatRadioModule} from '@angular/material/radio';
import {MatSelectModule} from '@angular/material/select';
import {MatInputModule} from '@angular/material/input';

import {MatSliderModule} from '@angular/material/slider';
import {MatSlideToggleModule} from '@angular/material/slide-toggle';
import {MatGridListModule} from '@angular/material/grid-list';
import { ViewProjectComponent } from './project/view-project/view-project.component';
import { AddeditprojectComponent } from './project/addeditproject/addeditproject.component';
import { ReportsComponent } from './reports/reports/reports.component';
import { MonthlyrentalreportComponent } from './reports/monthlyrentalreport/monthlyrentalreport.component';
import { ProjectprogressreportComponent } from './reports/projectprogressreport/projectprogressreport.component';
import { InventoryreportComponent } from './reports/inventoryreport/inventoryreport.component';
import { ExpensereportComponent } from './reports/expensereport/expensereport.component';
import { SubcontractorreportComponent } from './reports/subcontractorreport/subcontractorreport.component';
import { AddupdateproComponent } from './project/addupdatepro/addupdatepro.component';
import { AddTaskComponent } from './task/add-task/add-task.component';
import { TaskComponent } from './task/task/task.component';
import { EditTaskComponent } from './task/edit-task/edit-task.component';
import { ViewTaskComponent } from './task/view-task/view-task.component';
import { TenderComponent } from './tender/tender/tender.component';
import { FileuploadComponent } from './tender/fileupload/fileupload.component';
import { AddProposedTenderComponent } from './tender/add-proposed-tender/add-proposed-tender.component';
import { SupplierComponent } from './supplier/supplier/supplier.component';
import { AddSupplierComponent } from './supplier/add-supplier/add-supplier.component';
import { EditSupplierComponent } from './supplier/edit-supplier/edit-supplier.component';
import { ViewSupplierComponent } from './supplier/view-supplier/view-supplier.component';
import { RequestQuotationComponent } from './supplier/request-quotation/request-quotation.component';
import { PhaseComponent } from './phase/phase/phase.component';
import { AddPhaseComponent } from './phase/add-phase/add-phase.component';
import { UpdatePhaseComponent } from './phase/update-phase/update-phase.component';
import { ViewPhaseComponent } from './phase/view-phase/view-phase.component';
import { AssignInventoryPhaseComponent } from './phase/assign-inventory-phase/assign-inventory-phase.component';
import { AddEquipmentComponent } from './equipment/add-equipment/add-equipment.component';
import { UpdateEquipmentComponent } from './equipment/update-equipment/update-equipment.component';
import { ViewEquipmentComponent } from './equipment/view-equipment/view-equipment.component';
import { CheckinEquipmentComponent } from './equipment/checkin-equipment/checkin-equipment.component';
import { CheckoutEquipmentComponent } from './equipment/checkout-equipment/checkout-equipment.component';
import { EquipmentComponent } from './equipment/equipment/equipment.component';

import { LoginComponent } from './user/login/login.component';
import { RegisterComponent } from './user/register/register.component';
import { ResetComponent } from './user/reset/reset.component';
import { AddSubComponent } from './subcontractor/add-sub/add-sub.component';
import { UpdateSubComponent } from './subcontractor/update-sub/update-sub.component';
import { AssignSubcontractorPhaseComponent } from './subcontractor/assign-subcontractor-phase/assign-subcontractor-phase.component';
import { AddUserComponent } from './employees/add-user/add-user.component';
import { EditUserComponent } from './employees/edit-user/edit-user.component';
import { UserComponent } from './employees/user/user.component';
import { OrderComponent } from './order/order/order.component';
import { InventoryComponent } from './inventory/inventory/inventory.component';
import { CategoryComponent } from './category/category/category.component';
import { SubcontractorComponent } from './subcontractor/subcontractor/subcontractor.component';



@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    ProjectsComponent,
   
    CompleteProjectComponent,
    ViewProjectComponent,
    AddeditprojectComponent,
    ReportsComponent,
    MonthlyrentalreportComponent,
    ProjectprogressreportComponent,
    InventoryreportComponent,
    ExpensereportComponent,
    SubcontractorreportComponent,
    AddupdateproComponent,
    AddTaskComponent,
    EditTaskComponent,
    ViewTaskComponent,
    TaskComponent,
    TenderComponent,
    FileuploadComponent,
    AddProposedTenderComponent,
    SupplierComponent,
    AddSupplierComponent,
    EditSupplierComponent,
    ViewSupplierComponent,
    RequestQuotationComponent,
    PhaseComponent,
    AddPhaseComponent,
    UpdatePhaseComponent,
    ViewPhaseComponent,
    AssignInventoryPhaseComponent,
    AddEquipmentComponent,
    UpdateEquipmentComponent,
    ViewEquipmentComponent,
    CheckinEquipmentComponent,
    CheckoutEquipmentComponent,
    EquipmentComponent,

    LoginComponent,
    RegisterComponent,
    ResetComponent,
    AddSubComponent,
    UpdateSubComponent,
    AssignSubcontractorPhaseComponent,
    AddUserComponent,
    EditUserComponent,
    UserComponent,
    OrderComponent,
    InventoryComponent,
    CategoryComponent,
    SubcontractorComponent,
    

  ],
  imports: [
    ReactiveFormsModule,
    FormsModule,
    HttpClientModule,
    MatMenuModule,
    MatTableModule,
    MatDatepickerModule,
    MatNativeDateModule,
    MatFormFieldModule,
    MatRadioModule,
    MatInputModule,
    MatSliderModule,
    MatSlideToggleModule,
    MatGridListModule,
    
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatToolbarModule,
    MatSidenavModule,
    MatButtonModule,
    MatIconModule,
    MatDividerModule,
    MatSelectModule,
  ],
  providers: [],
  bootstrap: [AppComponent],
  schemas:[
    CUSTOM_ELEMENTS_SCHEMA
  ]
})
export class AppModule { }
