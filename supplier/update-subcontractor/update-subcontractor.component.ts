import { Component, OnInit } from '@angular/core';
import { Suboncontractor } from 'src/app/interface/suboncontractor';
import { ActivatedRoute, Router } from '@angular/router';
import { FormGroup, FormControl, Validators} from '@angular/forms';
import { MainService } from 'src/app/service/main.service';




@Component({
  selector: 'app-update-suboncontractor',
  templateUrl: './update-suboncontractor.component.html',
  styleUrls: ['./update-suboncontractor.component.scss']
})
export class UpdateSubcontractorComponent implements OnInit {

  id!: number;
  subcontractor!: Subcontractor;
  form!: FormGroup;
  dialogRef: any;


  constructor(
    private router: Router,
    public mainService: MainService,
    private route: ActivatedRoute,
  ) { }

  ngOnInit(): void {
    this.id = this.route.snapshot.params['subcontractorid'];
    this.mainService.findSubcontractor(this.id).subscribe((data: Subcontractor)=>{
      this.subcontractor = data;
    });
  

  this.form = new FormGroup({
    subcontractorName: new FormControl('', [Validators.required]),
    subcontractorDescription: new FormControl('', [Validators.required]),
    subcontractorAddress: new FormControl('', Validators.required),
    subcontractorTelephone: new FormControl('', [Validators.required]),
    subcontractorEmail: new FormControl('', Validators.required)
    
    
  });
}

get f(){
  return this.form.controls;
}
   
submit(){
  console.log(this.form.value);
  this.mainService.updateSubcontractor(this.id, this.form.value).subscribe(res => {
       console.log('Subcontractor updated successfully!');
       this.router.navigateByUrl('subcontractor');
  })
}

onNoClick(): void {
  this.dialogRef.close();
}


}
