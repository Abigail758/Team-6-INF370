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
    
    public partial class Category2
    {
        public Category2()
        {
            this.Inventories = new HashSet<Inventory2>();
        }
    
        public int Category_ID { get; set; }
        public string Category_Name { get; set; }
        public string Category_Description { get; set; }
    
        public virtual ICollection<Inventory2> Inventories { get; set; }
    }
}