import { Component, OnInit } from '@angular/core';
import { MainService } from 'src/app/service/main.service';
import { Phase } from 'src/app/interface/phase';
import { AbstractControlOptions, FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatDialog } from '@angular/material/dialog';



@Component({
  selector: 'app-phase',
  templateUrl: './phase.component.html',
  styleUrls: ['./phase.component.scss']
})
export class PhaseComponent implements OnInit {

  phase: Phase[] = [];

  constructor(
    public mainService: MainService,
    private router: Router,
    
  ) { }

  ngOnInit(): void {
    this.mainService.getAllPhase().subscribe((data: Phase[])=>{
      this.phase = data;
      console.log(this.phase);
    })  
  }
  
  deletePhase(id: number){
    this.mainService.deletePhase(id).subscribe(res => {
         this.phase = this.phase.filter(item => item.id !== id);
         console.log('Phase deleted successfully!');
    })
  }

}
