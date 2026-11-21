-- Schema definition for the database

-- Schema for table: users
CREATE TABLE users (
    user_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    full_name VARCHAR(70) NOT NULL,
    email VARCHAR(70) NOT NULL UNIQUE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Schema for table: venues
CREATE TABLE venues (
    venue_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    venue_name VARCHAR(70) NOT NULL,
    address VARCHAR(70) NOT NULL,
    city VARCHAR(70) NOT NULL
);

-- Schema for table: seats
CREATE TABLE seats (
    seat_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    section_name VARCHAR(25) NOT NULL,
    row_label VARCHAR(25) NOT NULL,
    seat_number INT NOT NULL CHECK (seat_number > 0),
    venue_id INT NOT NULL,
    CONSTRAINT fk_venue
        FOREIGN KEY (venue_id)
        REFERENCES venues(venue_id),
    UNIQUE(venue_id, section_name, row_label, seat_number)
);

-- Schema for table: events
CREATE TABLE events (
    event_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    event_name VARCHAR(60) NOT NULL,
    category VARCHAR(60) NOT NULL,
    description VARCHAR(100) NOT NULL
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
    status TEXT NOT NULL CHECK (status IN ('CONFIRMED', 'CANCELLED'))
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