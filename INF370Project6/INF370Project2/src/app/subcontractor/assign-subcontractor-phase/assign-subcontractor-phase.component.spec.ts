import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AssignSubcontractorPhaseComponent } from './assign-subcontractor-phase.component';

describe('AssignSubcontractorPhaseComponent', () => {
  let component: AssignSubcontractorPhaseComponent;
  let fixture: ComponentFixture<AssignSubcontractorPhaseComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AssignSubcontractorPhaseComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AssignSubcontractorPhaseComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
