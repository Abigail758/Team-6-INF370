import { Component, OnInit } from '@angular/core';
import { Task } from './../../interface/task';
import {  FormBuilder, FormGroup, FormControl, Validators } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import { MainService } from 'src/app/service/main.service';

@Component({
  selector: 'app-edit-task',
  templateUrl: './edit-task.component.html',
  styleUrls: ['./edit-task.component.scss']
})
export class EditTaskComponent implements OnInit {

  id!: number;
  task!: Task;
  form!: FormGroup;

  constructor(
    private router: Router,
    public mainService: MainService,
    private route: ActivatedRoute,
  ) { }

  ngOnInit(): void {
    this.id = this.route.snapshot.params['taskId'];
    this.mainService.findTask(this.id).subscribe((data: Task)=>{
      this.task = data;
    });

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
    this.mainService.updateTask(this.id, this.form.value).subscribe(res => {
         console.log('Task updated successfully!');
         this.router.navigateByUrl('task');
    })
  }

}
