CREATE DATABASE cm_devices;
USE DATABASE cm_devices;
CREATE TABLE devices(
    device_id INT NOT NULLL AUTO INCREMENT,
    device_name VARCHAR(50) NOT NULL,
    price DECIMAL NOT NULL,
    PRIMARY KEY (device_id)
);
CREATE TABLE stock(
    device_id,
    quantity INT,
)