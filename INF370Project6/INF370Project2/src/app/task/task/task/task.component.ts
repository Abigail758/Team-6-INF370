import { Component, OnInit } from '@angular/core';
import {Task} from 'src/app/interface/task';
import { map } from 'rxjs/operators';
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

  task: Task[] = [];
  taskId : number;

  constructor(private mainService :MainService, private router: Router) { }

  ngOnInit(): void {
  }

  deleteTask(id:number){
    this.mainService.deleteTask(id).subscribe((res: any) => {
         this.task = this.task.filter((item: { taskId: number; }) => item.taskId !== id);
         console.log('Task deleted successfully!');
    })
  }

}
