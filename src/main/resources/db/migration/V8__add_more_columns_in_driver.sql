ALTER TABLE driver
    MODIFY COLUMN license_number VARCHAR(255) NOT NULL,
    ADD COLUMN driver_approval_status ENUM('APPROVED','DENIED','PENDING'),
    ADD COLUMN active_city VARCHAR(255),
    ADD COLUMN rating DOUBLE NOT NULL CHECK (rating >= 0.00 AND rating <= 5.00),
    ADD COLUMN last_location_id BIGINT,
    ADD COLUMN home_id BIGINT,
    ADD COLUMN car_id BIGINT;

ALTER TABLE driver
    ADD CONSTRAINT fk_driver_last_location FOREIGN KEY (last_location_id) REFERENCES exact_location(id);

ALTER TABLE driver
    ADD CONSTRAINT fk_driver_home FOREIGN KEY (home_id) REFERENCES exact_location(id);

ALTER TABLE driver
    ADD CONSTRAINT fk_driver_car FOREIGN KEY (car_id) REFERENCES car(id);