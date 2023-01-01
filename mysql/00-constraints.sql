CREATE TABLE IF NOT EXISTS Player(
    name VARCHAR(50) NOT NULL,
    city VARCHAR(50) DEFAULT 'Montevideo'
);

ALTER TABLE Player
ADD PRIMARY KEY (name);

CREATE TABLE IF NOT EXISTS Address(
    id INT NOT NULL,
    street VARCHAR(255),
    postcode VARCHAR(10),
    town VARCHAR(30) DEFAULT 'Helsinki'
);

ALTER TABLE Address
ALTER postcode SET DEFAULT '00000';
