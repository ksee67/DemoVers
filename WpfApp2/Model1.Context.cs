﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WpfApp2
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class FishDataBaseEntities : DbContext
    {
        public FishDataBaseEntities()
            : base("name=FishDataBaseEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Active> Active { get; set; }
        public virtual DbSet<FishingResults> FishingResults { get; set; }
        public virtual DbSet<FishStock> FishStock { get; set; }
        public virtual DbSet<Ribalka> Ribalka { get; set; }
        public virtual DbSet<Roles> Roles { get; set; }
        public virtual DbSet<SalesOrders> SalesOrders { get; set; }
        public virtual DbSet<Users> Users { get; set; }
    }
}
