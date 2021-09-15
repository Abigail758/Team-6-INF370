import { Component, OnInit } from '@angular/core';
import {MatDialog, MatDialogRef, MAT_DIALOG_DATA} from '@angular/material/dialog';
import { AbstractControlOptions, FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MainService } from 'src/app/service/main.service';
import { Quotation } from 'src/app/interface/quotation';

export interface DialogData {
  accept: string;
  decline: string;
}



@Component({
  selector: 'app-supplier-quotation',
  templateUrl: './supplier-quotation.component.html',
  styleUrls: ['./supplier-quotation.component.scss']
})
export class SupplierQuotationComponent implements OnInit {


  accept!: string;
  decline!: string;
  dialogRef: any;
  form!: FormGroup;

  constructor(
    public dialog: MatDialog,
    public mainService: MainService,
    private router: Router
    ) {}

  openDialog(): void {
    const dialogRef = this.dialog.open(SupplierQuotationComponent, {
      width: '250px',
      data: {decline: this.decline, accept: this.accept}
    });

    dialogRef.afterClosed().subscribe((result: string) => {
      console.log('The dialog was closed');
      this.accept = result;
    });
  }

  onNoClick(): void {
    this.dialogRef.close();
  }

  ngOnInit(): void {
  }


  submit(){
    console.log(this.form.value);
    this.mainService.createQoutation(this.form.value).subscribe(res => {
         console.log('Supplier quotation added successfully!');
         this.router.navigateByUrl('supplier');
    });

  }

}
