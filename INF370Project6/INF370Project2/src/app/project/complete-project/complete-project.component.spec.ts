import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CompleteProjectComponent } from './complete-project.component';

describe('CompleteProjectComponent', () => {
  let component: CompleteProjectComponent;
  let fixture: ComponentFixture<CompleteProjectComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CompleteProjectComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CompleteProjectComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
