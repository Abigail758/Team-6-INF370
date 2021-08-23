import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';


const httpOptions = { headers: new HttpHeaders({ 'Content-Type': 'application/json'}) };

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  apiUrl='http://localhost:62525/api/BrainyBunch/'
  constructor(private http: HttpClient) { }
  orders: any[] = [];
  order: any;

  //Category||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
  getAllCategories(): Observable<any[]> {
    return this.http.get<any[]>(this.apiUrl + 'getCategories');
  }


  getCategoryDetailsById(categoryID: string): Observable<any> {
  return this.http.get<any>(this.apiUrl + 'getCategoryDetailsById/' + categoryID);
  }




  createCategory(category: any): Observable<any> {
    console.log(this.apiUrl + 'insertCategoryDetails/')
  return this.http.post<any>(this.apiUrl + 'insertCategoryDetails/',category, httpOptions);
  }


  updateCategory(category: any): Observable<any> {
  return this.http.put<any>(this.apiUrl + 'updateCategoryDetails/',category, httpOptions);
  }



  deleteCategoryById(categoryID: string): Observable<number> {
  return this.http.delete<number>(this.apiUrl + 'deleteCategoryDetails?id=' +categoryID,httpOptions);
  }

  //Inventory||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
  getAllInventory(): Observable<any[]>
  {
    return this.http.get<any[]>(this.apiUrl + 'getInventory');
  }

  createInventory(inventory: any): Observable<any>
  {
    return this.http.post<any>(this.apiUrl + 'insertInventoryDetails/',inventory, httpOptions);
  }


  deleteInventoryById(inventoryID: string): Observable<number> {
  return this.http.delete<number>(this.apiUrl + 'deleteInventoryDetails?id=' +inventoryID,httpOptions);
  }

  //Orders||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
  getAllOrders()//: Observable<any[]>
  {
    console.log('get orders in service', this.orders)
    return this.orders;
  //  return this.http.get<any[]>(this.apiUrl + 'getOrders');
  }

  createOrder(inventory: any)//: Observable<any>
  {
    console.log('create order service', inventory)
    this.orders.push(inventory);
    return this.orders;
   // console.log('create order service', inventory)
  //  return this.http.post<any>(this.apiUrl + 'insertOrderDetails/',inventory, httpOptions);
  }

  updateOrder(inventory: any)//: Observable<any>
  {
    console.log('update order', inventory)
  return this.order = inventory;

   // console.log('create order service', inventory)
  //  return this.http.post<any>(this.apiUrl + 'insertOrderDetails/',inventory, httpOptions);
  }

  uploadProof(file)//: Observable<any>
  {
  //   console.log('update order', inventory)
  // return this.order = inventory;
console.log('file in service', file)
  const formData = new FormData()
  formData.append('file', file, file.name );
  console.log('formdata', formData)

   // console.log('create order service', inventory)
  //  return this.http.post<any>(this.apiUrl + 'insertOrderDetails/',inventory, httpOptions);
  }

}


