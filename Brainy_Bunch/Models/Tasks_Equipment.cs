//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Brainy_Bunch.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tasks_Equipment
    {
        public Tasks_Equipment()
        {
            this.Checkout_Checkin_Date = new HashSet<Checkout_Checkin_Date>();
            this.Checkout_Checkin_Date1 = new HashSet<Checkout_Checkin_Date1>();
            this.Checkout_Checkin_Date2 = new HashSet<Checkout_Checkin_Date2>();
        }
    
        public int Tasks_Equipment_ID { get; set; }
        public int Task_ID { get; set; }
        public int Equipment_ID { get; set; }
        public string Checkout_Equipment { get; set; }
        public string Checkin_Equipment { get; set; }
        public Nullable<decimal> Quantity_Checkout { get; set; }
        public Nullable<decimal> Quantity_Checkin { get; set; }
    
        public virtual ICollection<Checkout_Checkin_Date> Checkout_Checkin_Date { get; set; }
        public virtual Equipment Equipment { get; set; }
        public virtual Task Task { get; set; }
        public virtual ICollection<Checkout_Checkin_Date1> Checkout_Checkin_Date1 { get; set; }
        public virtual Equipment1 Equipment1 { get; set; }
        public virtual Task1 Task1 { get; set; }
        public virtual ICollection<Checkout_Checkin_Date2> Checkout_Checkin_Date2 { get; set; }
        public virtual Equipment2 Equipment2 { get; set; }
        public virtual Task2 Task2 { get; set; }
    }
}
