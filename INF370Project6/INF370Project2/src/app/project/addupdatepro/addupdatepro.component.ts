
import { MainService } from 'src/app/service/main.service';
import { Component, OnInit } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { Project } from 'src/app/interface/project';
import { Project_Status } from 'src/app/interface/project';
import { Phase } from 'src/app/interface/project';
import { Phase_Status } from 'src/app/interface/project';
import { Tender } from 'src/app/interface/tender';
import { ActivatedRoute, Params } from '@angular/router';
import { Location } from '@angular/common';


@Component({
  selector: 'app-addupdatepro',
  templateUrl: './addupdatepro.component.html',
  styleUrls: ['./addupdatepro.component.scss']
})
export class AddupdateproComponent implements OnInit {
  projectForm!: FormGroup;
  id!: number;
  isAddMode!: boolean;
  loading = false;
  submitted = false;
  project!: Project;
  phase!: Phase[];
  phase_Status!: Phase_Status[];
  project_Status!: Project_Status[];
  tender!:Tender[];

  constructor(
    private mainService: MainService,
    private route: ActivatedRoute,
    private location: Location) { }

  ngOnInit(): void {
    this.project = new Project();
    this.project.Project_Name = " ";
    this.project.Project_Description = " ";
    this.project.Project_Status_ID= ""
    this.project.Site_Address= " "
    this.project.Site_Name= " "
    this.project.End_Date=" "
    this.project.Start_Date=" ";

    // this.getProjectStatus();
  }

  goBack() {
    this.location.back();
  }
  
  private updateProduct(project: Project) {
  }

  private addProduct(project: Project) {
    this.mainService.PostProject(project).subscribe(() => this.goBack());
  }

  private getProjectStatus(project_status: Project_Status) {
    this.mainService.GetProject_Statuses().subscribe(data => this.project_Status = data);
  }

  private getProjects(project: Project) {
    this.mainService.GetProjects().subscribe();
  }

  private getPhases(phase: Phase) {
    this.mainService.GetPhases().subscribe();
  }

  private getPhaseStatus(phase_status: Phase_Status) {
    this.mainService.GetPhase_Status().subscribe();
  }

  private getTenders(tenders: Tender) {
    this.mainService.getTenders().subscribe();
  }


  saveProduct() {
    if (this.project) {
      if (this.project.Project_ID) {
        this.updateProduct(this.project);
      }
      else {
        this.addProduct(this.project);
      }
    }
  }



}
