import { Component, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-place-order',
  templateUrl: './place-order.component.html',
  styleUrls: ['./place-order.component.css']
})
export class PlaceOrderComponent implements OnInit {

  @ViewChild('success') success : any;

  orderForm: any;
  suppliers: any[] = [{
    supplier_id: 1,
    Supplier_Name: "SHoprite"
  }];
  inventories: any[] = [{
    inventory_id: 1,
    inventory_Name: "cement"
  }];
  updateStatus: boolean = false;
  file: File = null;

  constructor( private formBuilder: FormBuilder,
    private apiService:ApiService,
    private router: Router,
    private modalService: NgbModal,
    ) {

    this.orderForm = this.formBuilder.group({
      supplier_id : ['', Validators.required],
      Inventory_id : ['', Validators.required],
      Quantity : ['', Validators.required],
      Price: ['', Validators.required],
      ReceivedStatus: ['',],
      Proof: ['', ],
    });
   }

  ngOnInit(): void {
this.update()
  }

  creationSuccess() {
    this.modalService.open(this.success,{ centered: true });
  }

  update(){

    let order = this.apiService.order;
    console.log('hh', order)
if(order != null)
{
  this.updateStatus = true;

}
console.log('status', this.updateStatus)
  }

  onChange(event) {
    console.log('onchange', event)
    this.file = event.target.files[0];
}


    // OnClick of button Upload
    onUpload() {
     // this.loading = !this.loading;
      console.log('inside onupload', this.file);
      this.apiService.uploadProof(this.file)
      // .subscribe(
      //     (event: any) => {
      //         if (typeof (event) === 'object') {

      //             // Short link via api response
      //             this.shortLink = event.link;

      //             this.loading = false; // Flag variable
      //         }
      //     }
      // );
  }


  placeOrder(){
    if(this.file != null){
    this.onUpload();}
    var newOrder =this.orderForm.value;
    console.log('in placeorder',newOrder);
    this.apiService.createOrder(newOrder);
    console.log(newOrder);
    this.router.navigate(["/stock-taking"]);
    // this.apiService.createInventory(newOrder).subscribe((data: any[])=>{
    //   this.router.navigate(["/orders"]);
    //   this.modalService.dismissAll();
    //   this.creationSuccess();
    // })
  }



}
