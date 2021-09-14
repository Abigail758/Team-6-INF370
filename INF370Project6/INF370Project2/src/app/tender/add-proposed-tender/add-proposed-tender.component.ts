import { Component, OnInit } from '@angular/core';
import { AbstractControlOptions, FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MainService } from 'src/app/service/main.service';


@Component({
  selector: 'app-add-proposed-tender',
  templateUrl: './add-proposed-tender.component.html',
  styleUrls: ['./add-proposed-tender.component.scss']
})
export class AddProposedTenderComponent implements OnInit {

  form!: FormGroup;

  constructor(
    public mainService: MainService,
    private router: Router
  ) { }

  

  ngOnInit(): void {
    this.form = new FormGroup({
      clientName: new FormControl('', [Validators.required]),
      tenderDescription: new FormControl('', [Validators.required]),
      dateSubmitted: new FormControl('', Validators.required),
      tenderStatus: new FormControl('', Validators.required)
    });
  }

  get f(){
    return this.form.controls;
  }
    
  submit(){
    console.log(this.form.value);
    this.mainService.createTender(this.form.value).subscribe(res => {
         console.log('Proposed tender added successfully!');
         this.router.navigateByUrl('tender');
    });

  }



}
