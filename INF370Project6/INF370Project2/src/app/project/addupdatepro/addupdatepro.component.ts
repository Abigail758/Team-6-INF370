
import { Component, OnInit } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { Project } from 'src/app/interface/project';
import { ActivatedRoute, Params } from '@angular/router';
import { Location } from '@angular/common';
import { MainService } from "./../../service/main.service";

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

  constructor(
    private mainService: MainService,
    private route: ActivatedRoute,
    private location: Location) { }

  ngOnInit(): void {
    this.project = new Project();
    this.project.Project_Name = "House";
    this.project.Project_Description = "House Building";
    this.project.Project_Status= "Complete"
    this.project.Site_Address= "22 Bakenveld, Witbank "
    this.project.Site_Name= "Bakenveld nature resort"
    this.project.End_Date="22 May 2022"
    this.project.Start_Date="03 May 2021"
  }

  goBack() {
    this.location.back();
  }
  
  private updateProduct(project: Project) {
  }

  private addProduct(project: Project) {
    this.mainService.PostProject(project).subscribe(() => this.goBack());
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
