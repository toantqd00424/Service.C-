//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MyService.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        public long Order_Number { get; set; }
        public string Order_Name { get; set; }
        public short Order_Status { get; set; }
        public int Cost { get; set; }
        public int Payment { get; set; }
        public string Name_Of_Place { get; set; }
        public string Address { get; set; }
        public short Type { get; set; }
        public string Elevation_System_Requered { get; set; }
        public string AccountUsername { get; set; }
    
        public virtual Account Account { get; set; }
    }
}