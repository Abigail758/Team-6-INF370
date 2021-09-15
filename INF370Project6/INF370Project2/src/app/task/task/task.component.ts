import { Task } from './../../interface/task';
import { map } from 'rxjs/operators';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Observable } from "rxjs";
import { MainService } from 'src/app/service/main.service';
import { MatIconModule } from '@angular/material/icon';
import { MatMenuModule } from '@angular/material/menu';

@Component({
  selector: 'app-task',
  templateUrl: './task.component.html',
  styleUrls: ['./task.component.scss']
})
export class TaskComponent implements OnInit {

  tasks: any = [
    { taskId: 1,
      Task_Status: 'In Progress',
      taskName: 'Painting job',
      taskDescription: 'Painting outside classrooms and a mural',
      startDate: '12 May 2021',
      endDate: '12 June 2021',
      phaseName: 'Paint job',
      taskEquipment: 'Paint brushes, Paint, buckets, rollers'},
  ];

  constructor(private mainService :MainService, private router: Router) { }

  ngOnInit(): void {
    this.getTasks();
  }

  task: Task[] = [];

  private getTasks():void{
    this.mainService.GetProjects().subscribe((tasks: any) => this.tasks = this.tasks);
  }
 
  deleteTask(id:number){
    this.mainService.deleteTask(id).subscribe((res: any) => {
         this.tasks = this.tasks.filter((item: { taskId: number; }) => item.taskId !== id);
         console.log('Task deleted successfully!');
    })
  }

}
