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
    
    public partial class WriteOff_Inventory
    {
        public WriteOff_Inventory()
        {
            this.Inventory_On_Hand = new HashSet<Inventory_On_Hand>();
        }
    
        public int WriteoffInventory_ID { get; set; }
        public string Item_Name { get; set; }
        public string Quality { get; set; }
        public string Reason { get; set; }
    
        public virtual ICollection<Inventory_On_Hand> Inventory_On_Hand { get; set; }
    }
}