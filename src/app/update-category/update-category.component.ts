import { HttpClient } from '@angular/common/http';
import { Component, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-update-category',
  templateUrl: './update-category.component.html',
  styleUrls: ['./update-category.component.css']
})
export class UpdateCategoryComponent implements OnInit {
  @ViewChild('success') success : any;
  categoryForm: any;
  category: any;


  constructor
  (
    private modalService: NgbModal,
    private httpService: HttpClient,
    private apiService:ApiService ,
    private formBuilder: FormBuilder,
    private router: Router,
    )
    {
      this.categoryForm = this.formBuilder.group({
        Category_Name : ['', Validators.required],
        Category_Description : ['', Validators.required],

      });


     }

  ngOnInit(): void {
    this.loadCategory()
  }


 loadCategory(){

   this.category =  this.apiService.getCategoryDetailsById(sessionStorage.getItem('updateCategoryID')).subscribe(cat=> {
      console.log('loadcategory', cat)
      this.categoryForm.controls['Category_Name'].setValue(cat.Category_Name);
      this.categoryForm.controls['Category_Description'].setValue(cat.Category_Description);

    });
  }

  updateCategory(){
  var updatedCategory=this.categoryForm.value;
  console.log('update', updatedCategory)
  updatedCategory.Category_Id=sessionStorage.getItem('updateCategoryID');
  this.apiService.updateCategory(updatedCategory).subscribe(category=>{
  this.router.navigate(["/category"]);
  sessionStorage.removeItem('updateCategoryID');
  this.modalService.dismissAll();
  this.modalService.open(this.success,{ centered: true});


  })

}

}
