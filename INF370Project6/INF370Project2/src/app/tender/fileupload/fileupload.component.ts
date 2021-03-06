import { HttpClient, HttpEventType } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';


@Component({
  selector: 'app-fileupload',
  templateUrl: './fileupload.component.html',
  styleUrls: ['./fileupload.component.scss']
})
export class FileuploadComponent implements OnInit {

  fileData!: File;
  previewUrl:any = null;
  fileUploadProgress!: string;
  uploadedFilePath!: string;

  constructor(
    private http: HttpClient
  ) { }

  ngOnInit(): void {
  }

  fileProgress(fileInput: any) {
    this.fileData = <File>fileInput.target.files[0];
    this.preview();
}

preview() {
  // Show preview 
  var mimeType = this.fileData.type;
  if (mimeType.match(/image\/*/) == null) {
    return;
  }

  var reader = new FileReader();      
  reader.readAsDataURL(this.fileData); 
  reader.onload = (_event) => { 
    this.previewUrl = reader.result; 
  }
}

onSubmit() {
    const formData = new FormData();
    formData.append('files', this.fileData);
     
    this.fileUploadProgress = '0%';
 
    this.http.post('https://us-central1-tutorial-e6ea7.cloudfunctions.net/fileUpload', formData, {
      reportProgress: true,
      observe: 'events'   
    })
    .subscribe(event => {
      if(event.type === HttpEventType.UploadProgress) {
        this.fileUploadProgress = Math.round(event.loaded / event.loaded  * 100) + '%';
        console.log(this.fileUploadProgress);
      } else if(event.type === HttpEventType.Response) {
        this.fileUploadProgress = '';
        console.log(event.body);          
        alert('SUCCESS !!');
      }
         
    }) 
}

}
