import { Component, OnInit } from '@angular/core';
import { AbstractControlOptions, FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MainService } from 'src/app/service/main.service';
import { Quotation } from 'src/app/interface/quotation';


@Component({
  selector: 'app-capture-quotation',
  templateUrl: './capture-quotation.component.html',
  styleUrls: ['./capture-quotation.component.scss']
})
export class CaptureQuotationComponent implements OnInit {

  form!: FormGroup;
   
  constructor(
    public mainService: MainService,
    private router: Router
  ) { }
  
  ngOnInit(): void {
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
    this.mainService.createQoutation(this.form.value).subscribe(res => {
         console.log('Supplier quotation added successfully!');
         this.router.navigateByUrl('supplier');
    });

  }

}
