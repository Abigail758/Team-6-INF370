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
    
    public partial class Employee
    {
        public Employee()
        {
            this.Employee_Task = new HashSet<Employee_Task>();
            this.Supplier_Order = new HashSet<Supplier_Order>();
            this.Users = new HashSet<User>();
        }
    
        public int Employee_ID { get; set; }
        public Nullable<int> Employee_Type_ID { get; set; }
        public string Employee_Name { get; set; }
        public string Employee_Surname { get; set; }
        public Nullable<decimal> Employee_ID_Number { get; set; }
        public Nullable<decimal> Employee_Telephone_Number { get; set; }
        public string Employee_Address { get; set; }
        public string Employee_Email_Address { get; set; }
    
        public virtual Employee_Type Employee_Type { get; set; }
        public virtual ICollection<Employee_Task> Employee_Task { get; set; }
        public virtual ICollection<Supplier_Order> Supplier_Order { get; set; }
        public virtual ICollection<User> Users { get; set; }
    }
}
