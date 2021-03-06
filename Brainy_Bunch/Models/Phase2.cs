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
    
    public partial class Phase2
    {
        public Phase2()
        {
            this.Phase_Inventory = new HashSet<Phase_Inventory>();
            this.Projects = new HashSet<Project2>();
            this.Subcontractor_Phase = new HashSet<Subcontractor_Phase>();
            this.Tasks = new HashSet<Task2>();
        }
    
        public int Phase_ID { get; set; }
        public int Phase_Status_ID { get; set; }
        public int Project_ID { get; set; }
        public string Phase_Name { get; set; }
        public string Phase_Description { get; set; }
        public System.DateTime Start_Date { get; set; }
        public System.DateTime End_Date { get; set; }
    
        public virtual ICollection<Phase_Inventory> Phase_Inventory { get; set; }
        public virtual Phase_Status Phase_Status { get; set; }
        public virtual Project2 Project { get; set; }
        public virtual ICollection<Project2> Projects { get; set; }
        public virtual ICollection<Subcontractor_Phase> Subcontractor_Phase { get; set; }
        public virtual ICollection<Task2> Tasks { get; set; }
    }
}
