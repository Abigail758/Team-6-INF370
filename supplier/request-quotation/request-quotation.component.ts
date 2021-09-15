import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, FormControl, Validators} from '@angular/forms';

@Component({
  selector: 'app-request-quotation',
  templateUrl: './request-quotation.component.html',
  styleUrls: ['./request-quotation.component.scss']
})
export class RequestQuotationComponent implements OnInit {

  FormData!: FormGroup;
  contact: any;


  constructor(private builder: FormBuilder) { }

  ngOnInit(): void {

    this.FormData = this.builder.group({
      Itemname: new FormControl('', [Validators.required]),
      Quantity: new FormControl('', [Validators.required]),
      Email: new FormControl('', ([Validators.required, Validators.email]))
      })
  }

  onSubmit(FormData: any) {
    console.log(FormData)
    this.contact.PostMessage(FormData)
    .subscribe((response: any) => {
    location.href = 'https://mailthis.to/confirm'
    console.log(response)
    }, (error: { responseText: any; }) => {
    console.warn(error.responseText)
    console.log({ error })
    })
  }


}
