import { Component, OnInit } from '@angular/core';
import { MainService } from 'src/app/service/main.service';
import { Subcontractor } from 'src/app/interface/subcontractor';
import { AbstractControlOptions, FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatDialog } from '@angular/material/dialog';



@Component({
  selector: 'app-subcontractor',
  templateUrl: './subcontractor.component.html',
  styleUrls: ['./subcontractor.component.scss']
})
export class SubcontractorComponent implements OnInit {

  subcontractor: Subcontractor[] = [];

  constructor(
    public mainService: MainService,
    private router: Router,
    
  ) { }

  ngOnInit(): void {
    this.mainService.getAllSubcontractor().subscribe((data: Subcontractor[])=>{
      this.subcontractor = data;
      console.log(this.subcontractor);
    })  
  }
  
  deleteSubcontractor(id: number){
    this.mainService.deleteSubcontractor(id).subscribe(res => {
         this.subcontractor = this.subcontractor.filter(item => item.id !== id);
         console.log('Subcontractor deleted successfully!');
    })
  }

}
