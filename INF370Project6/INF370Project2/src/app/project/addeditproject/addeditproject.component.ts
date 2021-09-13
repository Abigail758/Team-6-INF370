import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Project } from './/..//../interface/project';
import {  FormBuilder, FormGroup, FormControl, Validators } from '@angular/forms';


@Component({
  selector: 'app-addeditproject',
  templateUrl: './addeditproject.component.html',
  styleUrls: ['./addeditproject.component.scss']
})
export class AddeditprojectComponent implements OnInit {
  projectForm!: FormGroup;
  id!: number;
  isAddMode!: boolean;
  loading = false;
  submitted = false;
  project!: Project;

  constructor(private formBuilder: FormBuilder, private route: ActivatedRoute,
   
    private router: ActivatedRoute,
    private location: Location) {}

  ngOnInit(): void {
    this.id = +this.route.snapshot.params['id'];
    this.isAddMode = !this.id;

    this.projectForm = this.formBuilder.group({
      Project_Name: ['',Validators.required, Validators.maxLength(150)],
      Project_Description: ['',Validators.required, Validators.maxLength(400)],
      Project_Status: ['',Validators.required],
      Start_Date:['',Validators.required],
      End_Date: ['',Validators.required],
      Site_Name: ['',Validators.required, Validators.maxLength(150)],
      Site_Address: ['',Validators.required, Validators.maxLength(250)],
    });

    // if (!this.isAddMode){


    //   this.projectForm = this.formBuilder.group({
    //     Project_Name: ['',Validators.required, Validators.maxLength(150)],
    //     Project_Description: ['',Validators.required, Validators.maxLength(400)],
    //     Project_Status: ['',Validators.required],
    //     Start_Date:['',Validators.required],
    //     End_Date: ['',Validators.required],
    //     Site_Name: ['',Validators.required, Validators.maxLength(150)],
    //     Site_Address: ['',Validators.required, Validators.maxLength(250)],
    // }
  }
  // goBack() {
  //   this.location.back();
  // }
}



