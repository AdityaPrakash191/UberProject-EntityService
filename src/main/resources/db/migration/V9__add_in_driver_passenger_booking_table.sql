ALTER TABLE driver
    DROP COLUMN is_available;

ALTER TABLE driver
    ADD COLUMN is_available BOOLEAN;

ALTER TABLE passenger
    ADD COLUMN last_location_id BIGINT,
    ADD COLUMN home_id BIGINT,
    ADD COLUMN rating DOUBLE NOT NULL CHECK (rating >= 0.00 AND rating <= 5.00),
    ADD COLUMN active_booking_id BIGINT;

ALTER TABLE passenger
    ADD CONSTRAINT fk_passenger_last_location FOREIGN KEY (last_location_id) REFERENCES exact_location(id);

ALTER TABLE passenger
    ADD CONSTRAINT fk_passenger_home FOREIGN KEY (home_id) REFERENCES exact_location(id);

ALTER TABLE passenger
    ADD CONSTRAINT fk_passenger_active_booking FOREIGN KEY (active_booking_id) REFERENCES booking(id);

ALTER TABLE booking
    ADD COLUMN start_location_id BIGINT,
    ADD COLUMN end_location_id BIGINT;

ALTER TABLE booking
    ADD CONSTRAINT fk_booking_start_location FOREIGN KEY (start_location_id) REFERENCES exact_location(id);

ALTER TABLE booking
    ADD CONSTRAINT fk_booking_end_location FOREIGN KEY (end_location_id) REFERENCES exact_location(id);
