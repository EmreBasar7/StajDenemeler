//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace veritabani2
{
    using System;
    using System.Collections.Generic;
    
    public partial class Sokak
    {
        public int SokakID { get; set; }
        public string YemekSayısı { get; set; }
        public string HayvanSayısı { get; set; }
        public Nullable<int> Yemek { get; set; }
    
        public virtual Yemek Yemek1 { get; set; }
    }
}