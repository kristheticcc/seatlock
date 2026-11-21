-- Schema definition for the database

-- Schema for table: users
CREATE TABLE users (
    user_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    full_name VARCHAR(70),
    email VARCHAR(70) UNIQUE,
    created_at TIMESTAMP
);

-- Schema for table: venues
CREATE TABLE venues (
    venue_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    venue_name VARCHAR(70),
    address VARCHAR(70),
    city VARCHAR(70)
);

-- Schema for table: seats
CREATE TABLE seats (
    seat_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    section_name VARCHAR(25),
    row_label VARCHAR(25),
    seat_number INT,
    venue_id INT NOT NULL,
    CONSTRAINT fk_venue
        FOREIGN KEY (venue_id)
        REFERENCES venues(venue_id)
);

-- Schema for table: events
CREATE TABLE events (
    event_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    event_name VARCHAR(60),
    category VARCHAR(60),
    description VARCHAR(100)
);

-- Schema for table: performances
CREATE TABLE performances (
    perf_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    event_id INT NOT NULL REFERENCES events(event_id),
    venue_id INT NOT NULL REFERENCES venues(venue_id),
    starts_at TIMESTAMP NOT NULL,
    base_price NUMERIC(8, 2) NOT NULL CHECK (base_price >= 0)
);

-- Schema for table: reservations
CREATE TABLE reservations (
    reservation_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(user_id),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    status TEXT NOT NULL CHECK (status IN ('CONFIRMED', 'CANCELLED')),
    total_amount NUMERIC(10, 2) NOT NULL CHECK (total_amount >= 0)
);

-- Schema for table: reservation items
CREATE TABLE reservation_items (
    item_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    reservation_id INT NOT NULL REFERENCES reservations(reservation_id),
    perf_id INT NOT NULL REFERENCES performances(perf_id),
    seat_id INT NOT NULL REFERENCES seats(seat_id),
    price_at_booking NUMERIC(8, 2) NOT NULL CHECK (price_at_booking >= 0),

    UNIQUE(reservation_id, perf_id, seat_id)
);

-- Schema for table: audit_log
CREATE TABLE audit_log (
    audit_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    reservation_id INT NOT NULL REFERENCES reservations(reservation_id),
    old_status TEXT NOT NULL,
    new_status TEXT NOT NULL,
    changed_at TIMESTAMP NOT NULL DEFAULT NOW(),

    CHECK (old_status IN ('CONFIRMED', 'CANCELLED')),
    CHECK (new_status IN ('CONFIRMED', 'CANCELLED'))
);