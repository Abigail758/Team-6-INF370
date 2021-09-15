import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-orders',
  templateUrl: './orders.component.html',
  styleUrls: ['./orders.component.css']
})
export class OrdersComponent implements OnInit {

  order=[];
  keywords='';

  constructor(
    private apiService:ApiService,
    private router: Router,
  ) { }

  ngOnInit(): void {
    this.loadAllOrders()
    console.log('this is ireder', this.order)
  }

  loadAllOrders() {
    this.apiService.getAllOrders()
  /// console.log('this is get orders', this.order)
    .subscribe(inventory=>{
      this.order = inventory;
    console.log(inventory)
      });
   }

   updateOrder(item) {
     this.apiService.getAllOrders()
    // console.log('this is get orders', this.order);
    // this.apiService.updateOrder(item)
    // this.router.navigate(["/place-order"])

     .subscribe(inventory=>{
     this.order = inventory;
    console.log(inventory)
      });
    }

}
