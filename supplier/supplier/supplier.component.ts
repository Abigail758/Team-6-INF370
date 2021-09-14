import { Component, OnInit } from '@angular/core';
import { MainService } from 'src/app/service/main.service';
import { Supplier } from 'src/app/interface/supplier';
import { AbstractControlOptions, FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatDialog } from '@angular/material/dialog';



@Component({
  selector: 'app-supplier',
  templateUrl: './supplier.component.html',
  styleUrls: ['./supplier.component.scss']
})
export class SupplierComponent implements OnInit {

  supplier: Supplier[] = [];

  constructor(
    public mainService: MainService,
    private router: Router,
    
  ) { }

  ngOnInit(): void {
    this.mainService.getAllSuppliers().subscribe((data: Supplier[])=>{
      this.supplier = data;
      console.log(this.supplier);
    })  
  }
  
  deleteSupplier(id: number){
    this.mainService.deleteSupplier(id).subscribe(res => {
         this.supplier = this.supplier.filter(item => item.id !== id);
         console.log('Supplier deleted successfully!');
    })
  }

}
