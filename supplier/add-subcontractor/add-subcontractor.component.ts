import { Component, OnInit } from '@angular/core';
import { MainService } from 'src/app/service/main.service';
import { Subcontractor } from 'src/app/interface/subcontractor';
import { AbstractControlOptions, FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatDialog } from '@angular/material/dialog';

@Component({
  selector: 'app-add-subcontractor',
  templateUrl: './add-subcontractor.component.html',
  styleUrls: ['./add-subcontractor.component.scss']
})
export class AddSubcontractorComponent implements OnInit {

  form!: FormGroup;
  retail!: string;
  rental!: string;
  dialogRef: any;

  constructor(
    public mainService: MainService,
    private router: Router,
    public dialog: MatDialog
  ) { }

  openDialog(): void {
    const dialogRef = this.dialog.open(AddSubcontractorComponent, {
      width: '250px',
      data: {retail: this.retail, rental: this.rental}
    });

    dialogRef.afterClosed().subscribe((result: string) => {
      console.log('The dialog was closed');
      this.retail = result;
    });
  }

  onNoClick(): void {
    this.dialogRef.close();
  }
  
  ngOnInit(): void {
    this.form = new FormGroup({
      subcontractorName: new FormControl('', [Validators.required]),
      subcontractorDescription: new FormControl('', [Validators.required]),
      subcontractorAddress: new FormControl('', Validators.required),
      subcontractorTelephone: new FormControl('', [Validators.required]),
      subcontractorEmail: new FormControl('', Validators.required)
    });
  }

  get f(){
    return this.form.controls;
  }
    
  submit(){
    console.log(this.form.value);
    this.mainService.createSubcontractor(this.form.value).subscribe(res => {
         console.log('Subcontractor added successfully!');
         this.router.navigateByUrl('subcontractor');
    });

  }
}
