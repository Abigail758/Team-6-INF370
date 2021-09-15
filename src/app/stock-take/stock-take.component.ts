import { Component, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-stock-take',
  templateUrl: './stock-take.component.html',
  styleUrls: ['./stock-take.component.css']
})
export class StockTakeComponent implements OnInit {
  @ViewChild('confirm') confirm : any;
  @ViewChild('success') success : any;

  stocktakingForm: any;

  constructor(
    private formBuilder: FormBuilder,
    private apiService:ApiService ,
    private router: Router,
    private modalService: NgbModal,
  ) {
    this.stocktakingForm = this.formBuilder.group({
      Quantity : ['', Validators.required],
    });
  }

  ngOnInit(): void {
    this.loadInfo()
  }

  SaveStocktaking()
  {
var updatedQuantity = this.stocktakingForm.value;
updatedQuantity.Inventory_ID = sessionStorage.getItem('InventoryID');
this.apiService.updateStock(updatedQuantity).subscribe(quantity=>
  this.router.navigate(["/inventory"]));
  this.modalService.dismissAll();
  this.modalService.open(this.success,{centered:true})
  }

  loadInfo()
  {

  }

}
