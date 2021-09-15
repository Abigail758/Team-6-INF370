import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AssignInventoryPhaseComponent } from './assign-inventory-phase.component';

describe('AssignInventoryPhaseComponent', () => {
  let component: AssignInventoryPhaseComponent;
  let fixture: ComponentFixture<AssignInventoryPhaseComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AssignInventoryPhaseComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AssignInventoryPhaseComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
