import { Component, OnInit } from '@angular/core';
import { MainService } from 'src/app/service/main.service';
import { Phase } from 'src/app/interface/phase';
import { AbstractControlOptions, FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatDialog } from '@angular/material/dialog';

@Component({
  selector: 'app-add-phase',
  templateUrl: './add-phase.component.html',
  styleUrls: ['./add-phase.component.scss']
})
export class AddPhaseComponent implements OnInit {

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
    const dialogRef = this.dialog.open(AddPhaseComponent, {
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
      phaseName: new FormControl('', [Validators.required]),
      phaseDescription: new FormControl('', [Validators.required]),
      StartDate: new FormControl('', Validators.required),
      EndDate: new FormControl('', [Validators.required]),
    });
  }

  get f(){
    return this.form.controls;
  }
    
  submit(){
    console.log(this.form.value);
    this.mainService.createPhase(this.form.value).subscribe(res => {
         console.log('Phase added successfully!');
         this.router.navigateByUrl('phase');
    });

  }
}
