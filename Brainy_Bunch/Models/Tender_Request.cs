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
    
    public partial class Tender_Request
    {
        public int Tender_Request_ID { get; set; }
        public int Tender_Request_Status_ID { get; set; }
        public int Client_ID { get; set; }
        public int Tender_ID { get; set; }
        public string Tender_Name { get; set; }
        public string Advertisement_Document { get; set; }
        public System.DateTime Date { get; set; }
    
        public virtual Client Client { get; set; }
        public virtual Tender Tender { get; set; }
        public virtual Tender_Request_Status Tender_Request_Status { get; set; }
        public virtual Client1 Client1 { get; set; }
        public virtual Tender1 Tender1 { get; set; }
        public virtual Client2 Client2 { get; set; }
        public virtual Tender2 Tender2 { get; set; }
    }
}
