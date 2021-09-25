import { Component, OnInit } from '@angular/core';
import { Supplier } from 'src/app/interface/supplier';
import { ActivatedRoute, Router } from '@angular/router';
import { FormGroup, FormControl, Validators} from '@angular/forms';
import { MainService } from 'src/app/service/main.service';
import {MatDialog, MatDialogRef, MAT_DIALOG_DATA} from '@angular/material/dialog';




@Component({
  selector: 'app-edit-supplier',
  templateUrl: './edit-supplier.component.html',
  styleUrls: ['./edit-supplier.component.scss']
})
export class EditSupplierComponent implements OnInit {

  id!: number;
  supplier!: Supplier;
  form!: FormGroup;
  dialogRef: any;


  constructor(
    private router: Router,
    public mainService: MainService,
    private route: ActivatedRoute,
  ) { }

  ngOnInit(): void {
    this.id = this.route.snapshot.params['supplierid'];
    this.mainService.findSupplier(this.id).subscribe((data: Supplier)=>{
      this.supplier = data;
    });
  

  this.form = new FormGroup({
    supplierName: new FormControl('', [Validators.required]),
    supplierEmail: new FormControl('', Validators.required),
    supplierTelephone: new FormControl('', [Validators.required]),
    supplierAddress: new FormControl('', Validators.required)
  });
}

get f(){
  return this.form.controls;
}
   
submit(){
  console.log(this.form.value);
  this.mainService.updateSupplier(this.id, this.form.value).subscribe(res => {
       console.log('Supplier updated successfully!');
       this.router.navigateByUrl('supplier');
  })
}

onNoClick(): void {
  this.dialogRef.close();
}


}
