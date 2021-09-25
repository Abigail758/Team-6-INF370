import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EditSubcontractorComponent } from './edit-subcontractor.component';

describe('EditSubcontractorComponent', () => {
  let component: EditSubcontractorComponent;
  let fixture: ComponentFixture<EditSubcontractorComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EditSubcontractorComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(EditSubcontractorComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
