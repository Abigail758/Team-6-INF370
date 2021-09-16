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
    
    public partial class Project
    {
        public Project()
        {
            this.Phases = new HashSet<Phase>();
            this.Supplier_Order = new HashSet<Supplier_Order>();
            this.Tenders = new HashSet<Tender>();
        }
    
        public int Project_ID { get; set; }
        public int Project_Status_ID { get; set; }
        public string Project_Name { get; set; }
        public string Project_Description { get; set; }
        public System.DateTime Start_Date { get; set; }
        public System.DateTime End_Date { get; set; }
        public string Site_Name { get; set; }
        public string Site_Address { get; set; }
        public int Tender_ID { get; set; }
        public int Phase_ID { get; set; }
    
        public virtual ICollection<Phase> Phases { get; set; }
        public virtual Phase Phase { get; set; }
        public virtual Project_Status Project_Status { get; set; }
        public virtual Tender Tender { get; set; }
        public virtual ICollection<Supplier_Order> Supplier_Order { get; set; }
        public virtual ICollection<Tender> Tenders { get; set; }
    }
}
