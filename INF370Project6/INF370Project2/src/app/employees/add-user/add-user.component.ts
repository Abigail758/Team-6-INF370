import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-add-user',
  templateUrl: './add-user.component.html',
  styleUrls: ['./add-user.component.scss']
})
export class AddUserComponent implements OnInit {

  addform!: FormGroup;

  constructor(private formBuilder: FormBuilder, private router: Router) { }

  ngOnInit(): void {
  this.addform = this.formBuilder.group({
    firstname: ['', Validators.required],
    lastname: ['', Validators.required],
    idno: ['', Validators.required],
    homeaddress: ['', Validators.required],
    email: ['', Validators.required],
    telno: [''],
    cellno: ['', Validators.required],
    emptype: ['', Validators.required],
    });
  }

  submit(form: any){
    console.log('here')
    console.log(form)
    // var user = localStorage.getItem("usersList"); 
    // var Data = JSON.parse(user);
    // if(Data==null)
    // {
    //  var list: never[] = []
    //   localStorage.setItem("usersList", JSON.stringify(list));
    //   var user = localStorage.getItem("usersList");
    //   Data = JSON.parse(user);
    // }
    // Data.push(form)
    // localStorage.setItem("usersList", JSON.stringify(Data));
    // this.router.navigate(["user"])
  }

  cancel(){
    this.router.navigate(["user"])
  }
}
