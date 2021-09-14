import { Component, OnInit } from '@angular/core';
import { Task } from './../../interface/task';
import {  FormBuilder, FormGroup, FormControl, Validators } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import { MainService } from 'src/app/service/main.service';

@Component({
  selector: 'app-add-task',
  templateUrl: './add-task.component.html',
  styleUrls: ['./add-task.component.scss']
})
export class AddTaskComponent implements OnInit {
  form!: FormGroup;

  constructor(
    public mainService: MainService,
    private router: Router
  ) { }

  ngOnInit(): void {

    this.form = new FormGroup({
      taskname: new FormControl('', [Validators.required]),
      phasename: new FormControl('', Validators.required),
      taskdescription: new FormControl('', [Validators.required]),
      startDate: new FormControl('', Validators.required),
       endDate: new FormControl('', [Validators.required]),
      taskequipment: new FormControl('', Validators.required)
    });
  }

  get f(){
    return this.form.controls;
  }
    
  submit(){
    console.log(this.form.value);
    this.mainService.createTask(this.form.value).subscribe(res => {
         console.log('Task added successfully!');
         this.router.navigateByUrl('task');
    });

  }

}
