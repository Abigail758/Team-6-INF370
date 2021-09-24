
import { Supplier } from './../interface/supplier';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { Project } from '../interface/project';
import { Phase } from '../interface/project';
import { Phase_Status } from '../interface/project';
import { Project_Status } from '../interface/project';
import { Task } from '../interface/task';
import { Tender } from '../interface/tender';


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
    return this.http.get<Project[]>(`${this.server}Project`)
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
    return this.http.post<Project>(`${this.server}Projects`,project, this.httpOptions)
    .pipe(map(res => res));
  }

  GetProject_Statuses():  Observable<Project_Status[]> {
    return this.http.get<Project_Status[]>(`${this.server}Project_Status`)
    .pipe(map(res => res));

  }

  GetProject_Status(id:number):  Observable<Project_Status[]> {
    return this.http.get<Project_Status[]>(`${this.server}Project_Status` + id)
    .pipe(map(res => res));

  }

  GetPhases():  Observable<Phase[]> {
    return this.http.get<Phase[]>(`${this.server}Phases`)
    .pipe(map(res => res));
  }

  GetPhase_Status():  Observable<Phase_Status[]> {
    return this.http.get<Phase_Status[]>(`${this.server}Phase_Status`)
    .pipe(map(res => res));
  }




  getTasks(): Observable<Task[]> {
    return this.http.get<Task[]>(this.server + '/GetTasks/')
   
  }

  createTask(task: any): Observable<Task> {
    return this.http.post<Task>(this.server + '/task/', JSON.stringify(task), this.httpOptions)
    
  }  
  
  findTask(id: number): Observable<Task> {
    return this.http.get<Task>(this.server + '/task/' + id)
   
  }

  updateTask(id: number, task: any): Observable<Task> {
    return this.http.put<Task>(this.server + '/task/' + id, JSON.stringify(task), this.httpOptions)
   
  }
  
  deleteTask(id: number){
    return this.http.delete<Task>(this.server + '/DeleteTask/' + id, this.httpOptions)
    
  }

  getTenders(): Observable<Tender[]> {
    return this.http.get<Tender[]>(this.server + '/GetTenders/')
   
  }

  createTender(tender: any): Observable<Tender> {
    return this.http.post<Tender>(this.server  + '/tender/', JSON.stringify(tender), this.httpOptions)
    
  }  
  
  findTender(id: number): Observable<Tender> {
    return this.http.get<Tender>(this.server  + '/tender/' + id)
   
  }

  deleteTender(id: number){
    return this.http.delete<Tender>(this.server  + '/DeleteTender/' + id, this.httpOptions)
    
  }

  getAllSuppliers(): Observable<Supplier[]> {
    return this.http.get<Supplier[]>(this.server + '/GetSuppliers/')
   
  }

  createSupplier(supplier: any): Observable<Supplier> {
    return this.http.post<Supplier>(this.server + '/supplier/', JSON.stringify(supplier), this.httpOptions)
    
  }  

  findSupplier(id: number): Observable<Supplier> {
    return this.http.get<Supplier>(this.server + '/supplier/' + id)
   
  }

  updateSupplier(id: number, supplier: any): Observable<Supplier> {
    return this.http.put<Supplier>(this.server + '/supplier/' + id, JSON.stringify(supplier), this.httpOptions)
   
  }
   
  deleteSupplier(id: number){
    return this.http.delete<Supplier>(this.server + '/DeleteSupplier/' + id, this.httpOptions)
    
  }

  createQoutation(task: any): Observable<Task> {
    return this.http.post<Task>(this.server + '/supplierrequest/', JSON.stringify(task), this.httpOptions)
    
  }  

}


