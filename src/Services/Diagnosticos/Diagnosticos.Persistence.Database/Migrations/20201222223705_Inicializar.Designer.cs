﻿// <auto-generated />
using System;
using Diagnosticos.Persistence.Database;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace Diagnosticos.Persistence.Database.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20201222223705_Inicializar")]
    partial class Inicializar
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasDefaultSchema("Diagnosticos")
                .UseIdentityColumns()
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.1");

            modelBuilder.Entity("Diagnosticos.Domain.DetalleDiagnostico", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<int?>("DiagnosticoId")
                        .HasColumnType("int");

                    b.Property<int>("Diagnostico_Id")
                        .HasColumnType("int");

                    b.Property<string>("Sintoma")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("DiagnosticoId");

                    b.ToTable("DetallesDiagnosticos");
                });

            modelBuilder.Entity("Diagnosticos.Domain.Diagnostico", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<int>("Empleado_Id")
                        .HasColumnType("int");

                    b.Property<string>("Enfermedad")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("Fecha")
                        .HasColumnType("datetime2");

                    b.Property<int>("Paciente_Id")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.ToTable("Diagnosticos");
                });

            modelBuilder.Entity("Diagnosticos.Domain.DetalleDiagnostico", b =>
                {
                    b.HasOne("Diagnosticos.Domain.Diagnostico", null)
                        .WithMany("DetallesDiagnostico")
                        .HasForeignKey("DiagnosticoId");
                });

            modelBuilder.Entity("Diagnosticos.Domain.Diagnostico", b =>
                {
                    b.Navigation("DetallesDiagnostico");
                });
#pragma warning restore 612, 618
        }
    }
}
