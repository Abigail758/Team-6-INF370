import { Component, OnInit } from '@angular/core';
import { Phase } from 'src/app/interface/phase';
import { ActivatedRoute, Router } from '@angular/router';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { MainService } from 'src/app/service/main.service';




@Component({
  selector: 'app-update-phase',
  templateUrl: './update-phase.component.html',
  styleUrls: ['./update-phase.component.scss']
})
export class UpdatePhaseComponent implements OnInit {

  id!: number;
  phase!: Phase;
  form!: FormGroup;
  dialogRef: any;


  constructor(
    private router: Router,
    public mainService: MainService,
    private route: ActivatedRoute,
  ) { }

  ngOnInit(): void {
    this.id = this.route.snapshot.params['phaseid'];
    this.mainService.findPhase(this.id).subscribe((data: Phase) => {
      this.phase = data;
    });


    this.form = new FormGroup({
      phaseName: new FormControl('', [Validators.required]),
      phaseDescription: new FormControl('', [Validators.required]),
      StartDate: new FormControl('', Validators.required),
      EndDate: new FormControl('', [Validators.required]),


    });
  }

  get f() {
    return this.form.controls;
  }

  submit() {
    console.log(this.form.value);
    this.mainService.updatePhase(this.id, this.form.value).subscribe(res => {
      console.log('Phase updated successfully!');
      this.router.navigateByUrl('phase');
    })
  }

  onNoClick(): void {
    this.dialogRef.close();
  }


}
