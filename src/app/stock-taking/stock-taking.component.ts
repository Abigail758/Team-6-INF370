import { Component, OnInit, ViewChild } from '@angular/core';
import { Router } from '@angular/router';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-stock-taking',
  templateUrl: './stock-taking.component.html',
  styleUrls: ['./stock-taking.component.css']
})
export class StockTakingComponent implements OnInit {
  @ViewChild('confirm') confirm : any;


  order=[];
  keywords='';

  constructor(
    private apiService:ApiService,
    private router: Router,
    private modalService: NgbModal,
  ) { }

  ngOnInit(): void {
    this.loadAllOrders()
  }




  loadAllOrders() {
    this.order=  this.apiService.getAllOrders()
    console.log('stocktakings', this.order);
     //.subscribe(inventory=>{
   //    this.inventory = inventory;
   //  console.log(inventory)
   //    });
    }

    confirmInventory() {
      this.modalService.open(this.confirm,{ centered: true });
    }

    updateOrder(item) {
     this.order=  this.apiService.getAllOrders()
     console.log('this is get orders', this.order);
     this.apiService.updateOrder(item)
this.confirmInventory();
   //  this.router.navigate(["/place-order"])

      //.subscribe(inventory=>{
    //    this.inventory = inventory;
    //  console.log(inventory)
    //    });
     }

}
