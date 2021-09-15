import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CheckinEquipmentComponent } from './checkin-equipment.component';

describe('CheckinEquipmentComponent', () => {
  let component: CheckinEquipmentComponent;
  let fixture: ComponentFixture<CheckinEquipmentComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CheckinEquipmentComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CheckinEquipmentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
