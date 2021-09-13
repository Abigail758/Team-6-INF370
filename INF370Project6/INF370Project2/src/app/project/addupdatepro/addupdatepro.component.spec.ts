import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AddupdateproComponent } from './addupdatepro.component';

describe('AddupdateproComponent', () => {
  let component: AddupdateproComponent;
  let fixture: ComponentFixture<AddupdateproComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AddupdateproComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AddupdateproComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
