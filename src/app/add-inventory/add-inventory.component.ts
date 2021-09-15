import { HttpClient } from '@angular/common/http';
import { Component, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-add-inventory',
  templateUrl: './add-inventory.component.html',
  styleUrls: ['./add-inventory.component.css']
})
export class AddInventoryComponent implements OnInit {
  @ViewChild('confirm') confirm : any;
  @ViewChild('success') success : any;

  inventoryForm: any;
  categories=[];

  constructor
  (
    private modalService: NgbModal,
    private httpService: HttpClient,
    private apiService:ApiService ,
    private formBuilder: FormBuilder,
    private router: Router,
    )
    {
      this.inventoryForm = this.formBuilder.group({
        Inventory_Name : ['', Validators.required],
        Category_ID: ['', Validators.required],
      });


     }

  ngOnInit(): void {
    this.loadAllCategories()
  }

  confirmInventory() {
    this.modalService.open(this.confirm,{ centered: true });
  }

  creationSuccess() {
    this.modalService.open(this.success,{ centered: true });
  }

  createInventory(){
    var newInventory =this.inventoryForm.value;
    console.log('create inventory',newInventory)
    this.apiService.createInventory(newInventory).subscribe((data: any[])=>{
      this.router.navigate(["/inventory"]);
      this.modalService.dismissAll();
      this.creationSuccess();
    })
  }


  loadAllCategories() {
   this.apiService.getAllCategories().subscribe(categories=>{
     this.categories = categories;
   console.log(categories)
     });

     return this.categories;

   }
}
