-- Create OTP Table
CREATE TABLE IF NOT EXISTS OTP (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(255) NOT NULL,
    sent_to_number VARCHAR(255) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL
);

-- Create ExactLocation Table
CREATE TABLE IF NOT EXISTS exact_location (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    latitude DOUBLE NOT NULL,
    longitude DOUBLE NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL
);

-- Create NamedLocation Table
CREATE TABLE IF NOT EXISTS named_location (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    exact_location_id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL,
    zipcode VARCHAR(20),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL
);

-- Add Foreign Key Constraint on NamedLocation.exact_location_id
ALTER TABLE named_location
    ADD CONSTRAINT fk_NAMEDLOCATION_ON_EXACT_LOCATION FOREIGN KEY (exact_location_id) REFERENCES exact_location(id) ON DELETE CASCADE;

ALTER TABLE Car
    MODIFY COLUMN plate_number VARCHAR(255) NOT NULL;

ALTER TABLE Car
    ADD CONSTRAINT uq_car_plate_number UNIQUE (plate_number);