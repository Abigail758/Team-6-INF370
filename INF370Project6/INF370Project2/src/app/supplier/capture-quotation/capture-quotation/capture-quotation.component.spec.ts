import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CaptureQuotationComponent } from './capture-quotation.component';

describe('CaptureQuotationComponent', () => {
  let component: CaptureQuotationComponent;
  let fixture: ComponentFixture<CaptureQuotationComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CaptureQuotationComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CaptureQuotationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
