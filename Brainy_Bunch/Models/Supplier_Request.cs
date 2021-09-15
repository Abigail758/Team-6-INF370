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
    
    public partial class Supplier_Request
    {
        public Supplier_Request()
        {
            this.Suppliers = new HashSet<Supplier>();
            this.Suppliers1 = new HashSet<Supplier1>();
            this.Suppliers2 = new HashSet<Supplier2>();
        }
    
        public int Supplier_Request_ID { get; set; }
        public string Item_Name { get; set; }
        public Nullable<decimal> Quantity { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public Nullable<int> Supplier_Request_Status_ID { get; set; }
    
        public virtual ICollection<Supplier> Suppliers { get; set; }
        public virtual Supplier_Request_Status Supplier_Request_Status { get; set; }
        public virtual ICollection<Supplier1> Suppliers1 { get; set; }
        public virtual ICollection<Supplier2> Suppliers2 { get; set; }
    }
}