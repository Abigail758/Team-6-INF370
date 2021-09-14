import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AddProposedTenderComponent } from './add-proposed-tender.component';

describe('AddProposedTenderComponent', () => {
  let component: AddProposedTenderComponent;
  let fixture: ComponentFixture<AddProposedTenderComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AddProposedTenderComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AddProposedTenderComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
