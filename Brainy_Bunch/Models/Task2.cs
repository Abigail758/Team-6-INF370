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
    
    public partial class Task2
    {
        public Task2()
        {
            this.Employee_Task = new HashSet<Employee_Task>();
            this.Tasks_Equipment = new HashSet<Tasks_Equipment>();
        }
    
        public int Task_ID { get; set; }
        public int Phase_ID { get; set; }
        public int Task_Status_ID { get; set; }
        public string Task_Description { get; set; }
        public System.DateTime Start_Date { get; set; }
        public System.DateTime End_Date { get; set; }
        public string Equipment { get; set; }
    
        public virtual ICollection<Employee_Task> Employee_Task { get; set; }
        public virtual Phase2 Phase { get; set; }
        public virtual Task_Status Task_Status { get; set; }
        public virtual ICollection<Tasks_Equipment> Tasks_Equipment { get; set; }
    }
}
