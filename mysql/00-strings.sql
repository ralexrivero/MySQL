CREATE TABLE IF NOT EXISTS customers(
    username VARCHAR(9),
    fullname VARCHAR(100),
    email VARCHAR(255),
    PRIMARY KEY (username)
);

CREATE TABLE IF NOT EXISTS feedback (
    feedbackID CHAR(8),
    feedbackType VARCHAR(100),
    comment TEXT(500),
    PRIMARY KEY (feedbackID)
);