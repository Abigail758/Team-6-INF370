import { Component, OnInit } from '@angular/core';
import {MatDialog, MatDialogRef, MAT_DIALOG_DATA} from '@angular/material/dialog';
import { ReactiveFormsModule } from '@angular/forms';
import { MainService } from 'src/app/service/main.service';
import { ActivatedRoute, Router } from '@angular/router';
import { AbstractControlOptions, FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';

export interface DialogData {
  accept: string;
  decline: string;
}

@Component({
  selector: 'app-tender',
  templateUrl: './tender.component.html',
  styleUrls: ['./tender.component.scss']
})
export class TenderComponent implements OnInit {

  accept!: string;
  decline!: string;
  dialogRef: any;
  form!: FormGroup;

  constructor(public dialog: MatDialog,  public mainService: MainService,  private router: Router) { }

  openDialog(): void {
    const dialogRef = this.dialog.open(TenderComponent, {
      width: '250px',
      data: {decline: this.decline, accept: this.accept}
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log('The dialog was closed');
      this.accept = result;
    });
  }

  onNoClick(): void {
    this.dialogRef.close();
  }


  ngOnInit(): void {
  }
  title = 'Angular Search Using ng2-search-filter';
  searchText: any;
  tender = [
    {tenderDescription: 'Building toilets', company: 'Sunnyside Pre-Priimary school', datesubmitted: '22 March 2021', status: 'accepted',tenderSource: 'Website' },
    {tenderDescription: 'Painitng and fixing roof' , company: 'Nacro Grand designs', datesubmitted: '2 June 2021', status: 'submitted',tenderSource: 'Website'},
    {tenderDescription: 'Lift installations' , company: 'Municipal offices', datesubmitted: '13 May 2021', status: 'submitted',tenderSource: 'Website'},
    {tenderDescription: 'Residential building' , company: 'Cradle residential designs',datesubmitted: '22 August 2021', status: 'accepted',tenderSource: 'Website' }
  ];
  
  submit(){
    console.log(this.form.value);
    this.mainService.createTender(this.form.value).subscribe(res => {
         console.log('Tender accepted successfully!');
         this.router.navigateByUrl('tender');
    });

  }

}




