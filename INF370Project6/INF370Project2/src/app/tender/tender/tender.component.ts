import { Component, OnInit } from '@angular/core';
import {MatDialog, MatDialogRef, MAT_DIALOG_DATA} from '@angular/material/dialog';
import { ReactiveFormsModule } from '@angular/forms';

export interface DialogData {
  accept: string;
  decline: string;
}

@Component({
  selector: 'app-tender',
  templateUrl: './tender.component.html',
  styleUrls: ['./tender.component.scss']
})
export class TenderComponent implements OnInit {

  accept!: string;
  decline!: string;
  dialogRef: any;

  constructor((public dialog: MatDialog) { }

  ngOnInit(): void {
  }

  


}




