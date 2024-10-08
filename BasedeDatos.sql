USE [master]
GO
/****** Object:  Database [BDVISITAS]    Script Date: 08/08/2024 11:57:11 ******/
CREATE DATABASE [BDVISITAS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDVISITAS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BDVISITAS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDVISITAS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BDVISITAS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BDVISITAS] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDVISITAS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDVISITAS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDVISITAS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDVISITAS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDVISITAS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDVISITAS] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDVISITAS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BDVISITAS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDVISITAS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDVISITAS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDVISITAS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDVISITAS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDVISITAS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDVISITAS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDVISITAS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDVISITAS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BDVISITAS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDVISITAS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDVISITAS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDVISITAS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDVISITAS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDVISITAS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDVISITAS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDVISITAS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDVISITAS] SET  MULTI_USER 
GO
ALTER DATABASE [BDVISITAS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDVISITAS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDVISITAS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDVISITAS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDVISITAS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BDVISITAS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BDVISITAS] SET QUERY_STORE = ON
GO
ALTER DATABASE [BDVISITAS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BDVISITAS]
GO





SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aulas](
	[idAula] [int] IDENTITY(1,1) NOT NULL,
	[NombreAula] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Edificios](
	[idEdificio] [int] IDENTITY(1,1) NOT NULL,
	[NombreEdificio] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEdificio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[FechaNacimiento] [date] NULL,
	[TipoUsuario] [varchar](20) NULL,
	[Usuario] [varchar](50) NULL,
	[Contraseña] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visitas](
	[idVisita] [int] IDENTITY(1,1) NOT NULL,
	[NombreAula] [varchar](100) NULL,
	[NombreEdificio] [varchar](100) NULL,
	[NombreVisitante] [varchar](50) NULL,
	[ApellidoVisitante] [varchar](50) NULL,
	[Carrera] [varchar](100) NULL,
	[Correo] [varchar](100) NULL,
	[HoraEntrada] [datetime] NULL,
	[HoraSalida] [datetime] NULL,
	[MotivoVisita] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[idVisita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO





SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EditarEdificio]
    @idEdificio INT,
    @NuevoNombreEdificio VARCHAR(100)
AS
BEGIN
    UPDATE Edificios
    SET NombreEdificio = @NuevoNombreEdificio
    WHERE idEdificio = @idEdificio;
END;
GO





SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EditarNombreAula]
    @idAula INT,
    @nuevoNombreAula VARCHAR(100)
AS
BEGIN
    UPDATE Aulas
    SET NombreAula = @nuevoNombreAula
    WHERE idAula = @idAula;
END;
GO





SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarAula]
    @ID INT
AS
BEGIN
    DELETE FROM Aulas WHERE idAula = @ID;
END;
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarEdificio]
    @idEdificio INT
AS
BEGIN
    DELETE FROM Edificios
    WHERE idEdificio = @idEdificio;
END;
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarUsuario]
    @idUsuario INT
AS
BEGIN
    DELETE FROM Usuarios
    WHERE idUsuario = @idUsuario;
END;
GO





SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarAula]
    @NombreAula VARCHAR(100)
AS
BEGIN
    INSERT INTO Aulas (NombreAula) VALUES (@NombreAula);
END;
GO





SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarEdificio]
    @NombreEdificio VARCHAR(100)
AS
BEGIN
    INSERT INTO Edificios (NombreEdificio)
    VALUES (@NombreEdificio);
END;
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[InsertarUsuario]
    @Nombre VARCHAR(50),
    @Apellido VARCHAR(50),
    @FechaNacimiento DATE,
    @TipoUsuario VARCHAR(20),
    @Usuario VARCHAR(50),
    @Contraseña VARCHAR(100)
AS
BEGIN
    INSERT INTO Usuarios (Nombre, Apellido, FechaNacimiento, TipoUsuario, Usuario, Contraseña)
    VALUES (@Nombre, @Apellido, @FechaNacimiento, @TipoUsuario, @Usuario, @Contraseña);
END;
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarAulas]
AS
BEGIN
    -- Seleccionar el ID y el nombre de todas las aulas
    SELECT idAula, NombreAula FROM Aulas;
END;
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarEdificios]
AS
BEGIN
    SELECT * FROM Edificios;
END;
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarUsuarios]
AS
BEGIN
    SELECT idUsuario, Nombre, Apellido, TipoUsuario, Usuario, Contraseña
    FROM Usuarios;
END;
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ModificarUsuario]
    @idUsuario INT,
    @Nombre VARCHAR(50),
    @Apellido VARCHAR(50),
    @FechaNacimiento DATE,
    @TipoUsuario VARCHAR(20),
    @Usuario VARCHAR(50),
    @Contraseña VARCHAR(100)
AS
BEGIN
    UPDATE Usuarios
    SET Nombre = @Nombre,
        Apellido = @Apellido,
        FechaNacimiento = @FechaNacimiento,
        TipoUsuario = @TipoUsuario,
        Usuario = @Usuario,
        Contraseña = @Contraseña
    WHERE idUsuario = @idUsuario;
END;
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerDatosUsuarios]
AS
BEGIN
    SELECT idUsuario,
           Nombre,
           Apellido,
           FechaNacimiento,
           TipoUsuario,
           Usuario,
		   Contraseña
    FROM Usuarios;
END;
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerDatosVisitas]
AS
BEGIN
    SELECT NombreAula,
           NombreEdificio,
           NombreVisitante,
           Correo,
           HoraEntrada,
           HoraSalida,
           MotivoVisita
    FROM Visitas;
END;
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RegistrarVisita]
    @NombreAula VARCHAR(100),
    @NombreEdificio VARCHAR(100),
    @NombreVisitante VARCHAR(50),
    @ApellidoVisitante VARCHAR(50),
    @Carrera VARCHAR(100),
    @Correo VARCHAR(100),
    @HoraEntrada DATETIME,
    @HoraSalida DATETIME,
    @MotivoVisita VARCHAR(200)
AS
BEGIN
    INSERT INTO Visitas (NombreAula, NombreEdificio, NombreVisitante, ApellidoVisitante, Carrera, Correo, HoraEntrada, HoraSalida, MotivoVisita)
    VALUES (@NombreAula, @NombreEdificio, @NombreVisitante, @ApellidoVisitante, @Carrera, @Correo, @HoraEntrada, @HoraSalida, @MotivoVisita);
END;
GO



INSERT INTO Usuarios (Nombre, Apellido, FechaNacimiento, TipoUsuario, Usuario, Contraseña)
VALUES ('Admin', 'User', '1980-01-01', 'Administrador', 'admin', 'admin123');
