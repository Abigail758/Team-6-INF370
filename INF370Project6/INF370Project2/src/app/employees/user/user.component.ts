import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import {MatTableDataSource} from '@angular/material/table';

export interface UserData {
  firstname: String;
  lastname: String;
  title: String;
  email: String;
  cellno: String;
  emptype: String;
}

const DATA: UserData[] = [{
  firstname: "",
  lastname: "",
  title: "",
  email: "",
  cellno: "",
  emptype: "",

}]


@Component({
  selector: 'app-user', 
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.scss']
})

export class UserComponent implements OnInit {

  displayedColumns: string[] = ["firstname","email", "cellno", "emptype","delete" ];

  dataSource = new MatTableDataSource(DATA);

  constructor(private router:Router) { }

  ngOnInit(): void {
    var users = localStorage.getItem("usersList");
    // var data = JSON.parse(users);
    // this.dataSource = new MatTableDataSource(data);
  }

  add(i: any){
    this.router.navigate(['add-user'])
  }

  edit(i: any){
    localStorage["ID"] = i;
    this.router.navigate(['edit-user'])
  }

  removeAt(i: any) {
    localStorage["userToDelete"] = i;

    var users = localStorage.getItem("usersList");
    // var Data = JSON.parse(users);
    // Data.splice(i,1);

    // this.dataSource = new MatTableDataSource(Data);
    // localStorage.setItem("usersList", JSON.stringify(Data));
  }
}
