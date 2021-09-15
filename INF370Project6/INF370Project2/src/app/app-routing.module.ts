import { ExpensereportComponent } from './reports/expensereport/expensereport.component';
import { ProjectprogressreportComponent } from './reports/projectprogressreport/projectprogressreport.component';
import { MonthlyrentalreportComponent } from './reports/monthlyrentalreport/monthlyrentalreport.component';

import { HomeComponent } from './home/home.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ProjectsComponent } from './project/projects/projects.component';
import { CompleteProjectComponent } from './project/complete-project/complete-project.component';
import { ViewProjectComponent } from './project/view-project/view-project.component';
import { AddeditprojectComponent } from './project/addeditproject/addeditproject.component';
import { ReportsComponent } from './reports/reports/reports.component';
import { InventoryreportComponent } from './reports/inventoryreport/inventoryreport.component';
import { SubcontractorreportComponent } from './reports/subcontractorreport/subcontractorreport.component';
import { AddupdateproComponent } from './project/addupdatepro/addupdatepro.component';
import { TaskComponent } from './task/task/task.component';
import { AddTaskComponent } from './task/add-task/add-task.component';
import { EditTaskComponent } from './task/edit-task/edit-task.component';
import { ViewTaskComponent } from './task/view-task/view-task.component';
import { TenderComponent } from './tender/tender/tender.component';
import { AddProposedTenderComponent } from './tender/add-proposed-tender/add-proposed-tender.component';
import { FileuploadComponent } from './tender/fileupload/fileupload.component';
import { SupplierComponent } from './supplier/supplier/supplier.component';
import { AddSupplierComponent } from './supplier/add-supplier/add-supplier.component';
import { EditSupplierComponent } from './supplier/edit-supplier/edit-supplier.component';
import { ViewSupplierComponent } from './supplier/view-supplier/view-supplier.component';
import { RequestQuotationComponent } from './supplier/request-quotation/request-quotation.component';
import { PhaseComponent } from './phase/phase/phase.component';
import { AddPhaseComponent } from './phase/add-phase/add-phase.component';
import { ViewPhaseComponent } from './phase/view-phase/view-phase.component';
import { UpdatePhaseComponent } from './phase/update-phase/update-phase.component';
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
import { AddUserComponent } from './employees/add-user/add-user.component';
import { EditUserComponent } from './employees/edit-user/edit-user.component';
import { UserComponent } from './employees/user/user.component';
import { OrderComponent } from './order/order/order.component';
import { InventoryComponent } from './inventory/inventory/inventory.component';
import { CategoryComponent } from './category/category/category.component';
import { SubcontractorComponent } from './subcontractor/subcontractor/subcontractor.component';


const routes: Routes = [
{
  path: '',
  component: HomeComponent,
},

{path: 'projects',component: ProjectsComponent,},
{path: 'addeditproject',component: AddeditprojectComponent,},
{path: 'complete-project',  component: CompleteProjectComponent,},
{path: 'view-project',component: ViewProjectComponent,},
{path: 'addupdateproject',component: AddupdateproComponent,},

{path: 'reports',component: ReportsComponent,},
{path: 'monthlyrentalreport',component: MonthlyrentalreportComponent,},
{path: 'projectprogressreport',component: ProjectprogressreportComponent,},
{path: 'inventoryreport',component: InventoryreportComponent,},
{path: 'expensereport',component: ExpensereportComponent,},
{path: 'subcontractorreport',component: SubcontractorreportComponent,},

{path: 'task',component: TaskComponent,},
{path: 'add-task',component: AddTaskComponent,},
{path: 'edit-task',component: EditTaskComponent,},
{path: 'view-task',component: ViewTaskComponent,},

{path: 'tender',component: TenderComponent,},
{path: 'add-proposed-tender',component: AddProposedTenderComponent,},
{path: 'edit-task',component: EditTaskComponent,},
{path: 'fileupload',component: FileuploadComponent,},

{path: 'supplier',component: SupplierComponent,},
{path: 'add-supplier',component: AddSupplierComponent,},
{path: 'edit-supplier',component: EditSupplierComponent,},
{path: 'view-supplier',component: ViewSupplierComponent,},
{path: 'request-quotation',component: RequestQuotationComponent,},

{path: 'phase',component: PhaseComponent,},
{path: 'add-phase',component: AddPhaseComponent,},
{path: 'update-phase',component: UpdatePhaseComponent,},
{path: 'view-phase',component: ViewPhaseComponent,},
{path: 'assign-inventory-phase',component: AssignInventoryPhaseComponent,},


{path: 'equipment',component: EquipmentComponent,},
{path: 'add-equipment',component: AddEquipmentComponent,},
{path: 'update-equipment',component: UpdateEquipmentComponent,},
{path: 'view-equipment',component: ViewEquipmentComponent,},
{path: 'checkin-equipment',component: CheckinEquipmentComponent,},
{path: 'checkout-equipment',component: CheckoutEquipmentComponent,},

{path: 'user',component: UserComponent,},
{path: 'add-user',component: AddUserComponent,},
{path: 'edit-user',component: EditUserComponent,},

{path: 'order',component: OrderComponent,},
{path: 'inventory',component: InventoryComponent,},
{path: 'category',component: CategoryComponent,},

{path: 'login',component: LoginComponent,},
{path: 'register',component: RegisterComponent,},
{path: 'reset',component: ResetComponent,},

{path: 'subcontractor',component: SubcontractorComponent,},
{path: 'add-sub',component: UpdatePhaseComponent,},
{path: 'update-sub',component: ViewPhaseComponent,},
{path: 'assign-subcontractor-phase',component: AssignInventoryPhaseComponent,},

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
