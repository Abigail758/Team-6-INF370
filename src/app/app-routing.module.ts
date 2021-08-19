import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AddCategoryComponent } from './add-category/add-category.component';
import { AddInventoryComponent } from './add-inventory/add-inventory.component';
import { AssignInventoryComponent } from './assign-inventory/assign-inventory.component';
import { CategoryComponent } from './category/category.component';
import { InventoryComponent } from './inventory/inventory.component';
import { OrdersComponent } from './orders/orders.component';
import { PlaceOrderComponent } from './place-order/place-order.component';
import { UpdateCategoryComponent } from './update-category/update-category.component';

const routes: Routes = [
{path:"add-inventory",component:AddInventoryComponent},
{path:"assign-inventory",component:AssignInventoryComponent},
{path:"inventory",component:InventoryComponent},
{path:"add-category",component:AddCategoryComponent},
{path:"update-category",component:UpdateCategoryComponent},
{path:"category",component:CategoryComponent},
{path:"orders",component:OrdersComponent},
{path:"place-order",component:PlaceOrderComponent},


];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
