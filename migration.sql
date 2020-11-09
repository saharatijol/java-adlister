USE adlister_bio;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS ads;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
                 ON DELETE CASCADE
);

INSERT INTO users(id, username, email, password)
VALUES (1 ,'chillyprowler', 'chillyprowler@gmail.com', 'idk');

INSERT INTO ads(user_id, title, description)
VALUES (1 ,'Gaming PC', 'great condition')

SELECT * FROM ads;