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
    
    public partial class Rental_Request_Status
    {
        public Rental_Request_Status()
        {
            this.Rental_Request = new HashSet<Rental_Request>();
        }
    
        public int Rental_Request_Status_ID { get; set; }
        public string Status_Type { get; set; }
    
        public virtual ICollection<Rental_Request> Rental_Request { get; set; }
    }
}
