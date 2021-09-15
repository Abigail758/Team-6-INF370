﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace INF370GabriQAPI.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Gabriq_System_DatabaseEntities : DbContext
    {
        public Gabriq_System_DatabaseEntities()
            : base("name=Gabriq_System_DatabaseEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Checkout_Checkin> Checkout_Checkin { get; set; }
        public virtual DbSet<Checkout_Checkin_Date> Checkout_Checkin_Date { get; set; }
        public virtual DbSet<Client> Clients { get; set; }
        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<Employee_Task> Employee_Task { get; set; }
        public virtual DbSet<Employee_Type> Employee_Type { get; set; }
        public virtual DbSet<Equipment> Equipments { get; set; }
        public virtual DbSet<Inventory> Inventories { get; set; }
        public virtual DbSet<Inventory_On_Hand> Inventory_On_Hand { get; set; }
        public virtual DbSet<Order_Status> Order_Status { get; set; }
        public virtual DbSet<Orderline> Orderlines { get; set; }
        public virtual DbSet<Password_History> Password_History { get; set; }
        public virtual DbSet<Payment_Type> Payment_Type { get; set; }
        public virtual DbSet<Phase> Phases { get; set; }
        public virtual DbSet<Phase_Inventory> Phase_Inventory { get; set; }
        public virtual DbSet<Phase_Status> Phase_Status { get; set; }
        public virtual DbSet<Project> Projects { get; set; }
        public virtual DbSet<Project_Status> Project_Status { get; set; }
        public virtual DbSet<Rental> Rentals { get; set; }
        public virtual DbSet<Rental_Line> Rental_Line { get; set; }
        public virtual DbSet<Rental_Request> Rental_Request { get; set; }
        public virtual DbSet<Rental_Request_Status> Rental_Request_Status { get; set; }
        public virtual DbSet<Rental_Status> Rental_Status { get; set; }
        public virtual DbSet<Subcontractor> Subcontractors { get; set; }
        public virtual DbSet<Subcontractor_Phase> Subcontractor_Phase { get; set; }
        public virtual DbSet<Supplier> Suppliers { get; set; }
        public virtual DbSet<Supplier_Order> Supplier_Order { get; set; }
        public virtual DbSet<Supplier_Request> Supplier_Request { get; set; }
        public virtual DbSet<Supplier_Request_Status> Supplier_Request_Status { get; set; }
        public virtual DbSet<Supplier_Type> Supplier_Type { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Task> Tasks { get; set; }
        public virtual DbSet<Task_Status> Task_Status { get; set; }
        public virtual DbSet<Tasks_Equipment> Tasks_Equipment { get; set; }
        public virtual DbSet<Tender> Tenders { get; set; }
        public virtual DbSet<Tender_Request> Tender_Request { get; set; }
        public virtual DbSet<Tender_Request_Status> Tender_Request_Status { get; set; }
        public virtual DbSet<Tender_Status> Tender_Status { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<User_Role> User_Role { get; set; }
        public virtual DbSet<WriteOff_Inventory> WriteOff_Inventory { get; set; }
    }
}
