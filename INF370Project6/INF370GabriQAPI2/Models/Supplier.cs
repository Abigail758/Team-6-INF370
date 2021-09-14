//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace INF370GabriQAPI.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Supplier
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Supplier()
        {
            this.Rentals = new HashSet<Rental>();
            this.Rental_Request = new HashSet<Rental_Request>();
            this.Supplier_Order = new HashSet<Supplier_Order>();
        }
    
        public int Supplier_ID { get; set; }
        public Nullable<int> Supplier_Type_ID { get; set; }
        public Nullable<int> Supplier_Request_ID { get; set; }
        public string Supplier_Name { get; set; }
        public string Supplier_Address { get; set; }
        public string Supplier_Email { get; set; }
        public Nullable<decimal> Supplier_Telephone_Number { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rental> Rentals { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rental_Request> Rental_Request { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Supplier_Order> Supplier_Order { get; set; }
        public virtual Supplier_Request Supplier_Request { get; set; }
        public virtual Supplier_Type Supplier_Type { get; set; }
    }
}