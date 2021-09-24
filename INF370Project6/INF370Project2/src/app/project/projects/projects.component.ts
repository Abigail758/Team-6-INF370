import { map } from 'rxjs/operators';
import { Component, OnInit } from '@angular/core';
import { Project } from 'src/app/interface/project';
import { Router } from '@angular/router';
import { Observable } from "rxjs";
import { MainService } from 'src/app/service/main.service';



@Component({
  selector: 'app-projects',
  templateUrl: './projects.component.html',
  styleUrls: ['./projects.component.scss']
})
export class ProjectsComponent implements OnInit {
  projects: any = [
    { Project_ID: 1,
      Project_Status_ID: 'In Progress',
      Project_Name: 'M1 Road Construction',
      Project_Description: 'Road Construction',
      Start_Date: '12 May 2021',
      End_Date: '12 September 2022',
      Site_Name: 'Watloo',
      Site_Address: 'M1 Pretoria Area'},
  ];

  constructor(private mainService :MainService, private router: Router) { }

  ngOnInit(): void {
    this.GetProjects();
  }

  // projects: Project[] = [];

  private GetProjects():void{
    this.mainService.GetProjects().subscribe(projects => this.projects = this.projects);
  }
 

}

