-- DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users
             (
                          id         INTEGER NOT NULL AUTO_INCREMENT,
                          first_name VARCHAR(30) NOT NULL,
                          last_name  VARCHAR(30) NOT NULL,
                          email      VARCHAR(150) NOT NULL,
                          PRIMARY KEY (id),
                          UNIQUE (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (first_name, last_name, email) VALUES ('Ben','Hesketh','test@test7.com'),
('Luke','Benson','test@test.com'),
('Matt','Hunt','test4@test.com'),
('Adam','Gray','super@hero.com'),
('Claire','McMurdo','test3@test.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
