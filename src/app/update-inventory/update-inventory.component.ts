import { HttpClient } from '@angular/common/http';
import { Component, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-update-inventory',
  templateUrl: './update-inventory.component.html',
  styleUrls: ['./update-inventory.component.css']
})
export class UpdateInventoryComponent implements OnInit {
  @ViewChild('confirm') confirm : any;
  @ViewChild('success') success : any;

  inventoryForm: any;
  Inventories=[];
  categories = [];
  Inventory: any;


  constructor(
    private modalService: NgbModal,
    private httpService: HttpClient,
    private apiService:ApiService ,
    private formBuilder: FormBuilder,
    private router: Router,
  ) {
    this.inventoryForm = this.formBuilder.group({
      Inventory_Name : ['', Validators.required],
      Category_ID: ['', Validators.required],
    });

   }

  ngOnInit(): void {
    this.loadAllCategories();
      this.loadInventory()
  }

  loadAllCategories() {
  this.apiService.getAllCategories().subscribe(categories=>{
   this.categories = categories;
   });
   return this.categories;
 }

  loadInventory(){
    this.Inventory =  this.apiService.getInventoryById(sessionStorage.getItem('updateInventoryID')).subscribe(cat=> {
       console.log('loadcategory', cat)
       this.inventoryForm.controls['Inventory_Name'].setValue(cat.Inventory_Name);
        this.inventoryForm.controls['Category_ID'].setValue(cat.Category_ID);

     });
   }

   updateInventory(){
     var updatedInventory = this.inventoryForm.value;
     updatedInventory.Inventory_ID = sessionStorage.getItem('updateInventoryID');
     this.apiService.updateInventory(updatedInventory).subscribe(inventory=>
      this.router.navigate(["/inventory"]));
      this.modalService.dismissAll();
      this.modalService.open(this.success,{centered:true})
   }

  confirmInventory() {
    this.modalService.open(this.confirm,{ centered: true });
  }

  creationSuccess() {
    this.modalService.open(this.success,{ centered: true });
  }

}
