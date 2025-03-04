
CREATE DATABASE IF NOT EXISTS fernandamontenegro;
USE fernandamontenegro;

CREATE TABLE Proveedores (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    nombre_razon_social VARCHAR(255) NOT NULL,
    cedula_identidad VARCHAR(20),
    cedula_juridica VARCHAR(20),
    domicilio TEXT,
    email VARCHAR(255),
    telefono VARCHAR(20),
    facsimile VARCHAR(20),
    tipo_proveedor ENUM('Fabricante', 'Distribuidor', 'Representante') NOT NULL
);

CREATE TABLE Creditos (
    id_credito INT AUTO_INCREMENT PRIMARY KEY,
    id_proveedor INT NOT NULL,
    plazo_credito ENUM('8 días', '15 días', '30 días', 'Otro') NOT NULL,
    otro_plazo VARCHAR(50),
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
);

CREATE TABLE Productos_Servicios (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    id_proveedor INT NOT NULL,
    descripcion TEXT NOT NULL,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
);
