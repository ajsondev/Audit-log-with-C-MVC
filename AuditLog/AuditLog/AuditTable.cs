//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AuditLog
{
    using System;
    using System.Collections.Generic;
    
    public partial class AuditTable
    {
        public int ID { get; set; }
        public int KeyFieldID { get; set; }
        public System.DateTime DateTimeStamp { get; set; }
        public string DataModel { get; set; }
        public string ValueBefore { get; set; }
        public string ValueAfter { get; set; }
        public string Changes { get; set; }
        public int AuditActionTypeENUM { get; set; }
    }
}
