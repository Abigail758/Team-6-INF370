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
    
    public partial class Checkout_Checkin2
    {
        public Checkout_Checkin2()
        {
            this.Checkout_Checkin_Date = new HashSet<Checkout_Checkin_Date2>();
        }
    
        public int Checkout_ID { get; set; }
        public string Checkout_Equip { get; set; }
        public string Checkin_Equip { get; set; }
    
        public virtual ICollection<Checkout_Checkin_Date2> Checkout_Checkin_Date { get; set; }
    }
}
