USE adlister_bio;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

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
INSERT INTO users(username, email, password)
    VALUES('child''s play', 'chucky@gmail.com', 'sdfsdffsdd');

INSERT INTO users(username, email, password)
VALUES ('rickyyy', 'rickyy@gmail.com', '654182'),
       ('biancar', 'mamba@gmail.com', 'isjdf13'),
       ('calebW', 'machine@gmail.com', 'odfkg85'),
       ('blossomp', 'berkserker@gmail.com', ';dfjgnlk9'),
       ('stijol', 'clown@gmail.com', 'kjdnfgk123');

select * from users;
select * from ads;
