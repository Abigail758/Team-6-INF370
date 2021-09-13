import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SubcontractorreportComponent } from './subcontractorreport.component';

describe('SubcontractorreportComponent', () => {
  let component: SubcontractorreportComponent;
  let fixture: ComponentFixture<SubcontractorreportComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SubcontractorreportComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(SubcontractorreportComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
