CREATE TABLE DBConstants (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    value VARCHAR(255),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL
);


ALTER TABLE DBConstants
    ADD CONSTRAINT uq_dbconstants_name UNIQUE (name);