import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { Project } from '../interface/project';


@Injectable({
  providedIn: 'root'
})

export class MainService {
  server = 'https://localhost:44369/api/';
  httpOptions = {
    headers: new HttpHeaders({
      ContentType: 'application/json'
    })
  };
  
  constructor(private http: HttpClient) { }

  GetProjects():  Observable<Project[]> {
    return this.http.get<Project[]>(`${this.server}Project/GetProjects`)
    .pipe(map(res => res));
  }
  
  GetProject(id:number):  Observable<Project[]> {
    return this.http.get<Project[]>(`${this.server}Project/GetProject`+ "/" + id)
    .pipe(map(res => res));
  }
  
  // PutProject():  Observable<Project[]> {
  //   return this.http.put<Project[]>(`${this.server}Project/PutProject`,)
  //   .pipe(map(res => res));
  // }

  PostProject(project:Project) {
    return this.http.post<Project>(`${this.server}Project/PostProject`,project, this.httpOptions)
    .pipe(map(res => res));
  }

  GetProject_Statuses():  Observable<Project[]> {
    return this.http.get<Project[]>(`${this.server}Project_Status/GetProject_Status`)
    .pipe(map(res => res));

  }

  GetProject_Status(id:number):  Observable<Project[]> {
    return this.http.get<Project[]>(`${this.server}Project_Status/GetProject_Status` + id)
    .pipe(map(res => res));

  }
  



}


