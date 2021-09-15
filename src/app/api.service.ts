import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';


const httpOptions = { headers: new HttpHeaders({ 'Content-Type': 'application/json'}) };

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  apiUrl='https://localhost:44310/api/'
  constructor(private http: HttpClient) { }
  orders: any[] = [];
  order: any;
  categories: any[] = [];
  category: any;

  //Category||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
  getAllCategories(): Observable<any[]> {

    //  return this.categories;
    return this.http.get<any[]>(this.apiUrl + 'Category/getCategories');
  }


  getCategoryDetailsById(categoryID ): Observable<any> {
  return this.http.get<any>(this.apiUrl + '/Category/getCategoryDetailsById/' + categoryID);
  }




  createCategory(category: any)//: Observable<any> {
    {
    console.log(this.apiUrl + 'insertCategoryDetails/')
    console.log('this is cat', category)
  //    this.categories.push(category);
  return this.http.post<any>(this.apiUrl + 'Category/insertCategoryDetails/',category, httpOptions);
  }


  updateCategory(category: any): Observable<any> {

  return this.http.put<any>(this.apiUrl + 'Category/updateCategoryDetails/',category, httpOptions);
  }



  deleteCategoryById(categoryID: string): Observable<number> {

      // let index = this.categories.findIndex(x=> x.categoryID == categoryID);
      // this.categories.splice(index,1)
  return this.http.delete<number>(this.apiUrl + 'Category/deleteCategoryDetails?id=' +categoryID,httpOptions);
  }

  //Inventory||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
  getAllInventory(): Observable<any[]>
  {
    return this.http.get<any[]>(this.apiUrl + 'Inventory/getInventory');
  }

  createInventory(inventory: any): Observable<any>
  {
    return this.http.post<any>(this.apiUrl + 'Inventory/insertInventoryDetails/',inventory, httpOptions);
  }

  updateInventory(inventory: any): Observable<any> {

    return this.http.put<any>(this.apiUrl + 'Inventory/updateInventoryDetails/',inventory, httpOptions);
    }

    updateStock(inventory: any): Observable<any> {

      return this.http.put<any>(this.apiUrl + 'Inventory/updateStock/',inventory, httpOptions);
      }


  getInventoryById(inventory ): Observable<any> {
    return this.http.get<any>(this.apiUrl + 'Inventory/getInventoryDetailsById/' + inventory);
    }


  deleteInventoryById(inventoryID: string): Observable<number> {
  return this.http.delete<number>(this.apiUrl + '/Inventory/deleteInventoryDetails?id=' +inventoryID,httpOptions);
  }

  //Orders||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
  getAllOrders(): Observable<any[]>
  {
    console.log('get orders in service', this.orders)
   // return this.orders;
  return this.http.get<any[]>(this.apiUrl + 'getOrders');
  }

  createOrder(inventory: any)//: Observable<any>
  {
    console.log('create order service', inventory)
    this.orders.push(inventory);
   // return this.orders;
   // console.log('create order service', inventory)
   return this.http.post<any>(this.apiUrl + 'Order/insertOrderDetails/',inventory, httpOptions);
  }

  updateOrder(inventory: any)//: Observable<any>
  {
  //   console.log('update order', inventory)
  // return this.order = inventory;

  //  // console.log('create order service', inventory)
    return this.http.post<any>(this.apiUrl + '/Order/insertOrderDetails/',inventory, httpOptions);
  }

  uploadProof(file)//: Observable<any>
  {
  //   console.log('update order', inventory)
  // return this.order = inventory;
// console.log('file in service', file)
//   const formData = new FormData()
//   formData.append('file', file, file.name );
//   console.log('formdata', formData)

   // console.log('create order service', inventory)
 //   return this.http.post<any>(this.apiUrl + 'insertOrderDetails/',inventory, httpOptions);
  }

}


