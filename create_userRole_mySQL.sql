SELECT * FROM oauth2.oauth_refresh_token;

truncate table oauth2.oauth_refresh_token;

commit;


SELECT * FROM oauth2.oauth_access_token;

delete from oauth2.oauth_access_token;

truncate table oauth2.oauth_access_token;

commit;




CREATE  TABLE oauth2.users (
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(45) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (username));

CREATE TABLE oauth2.user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));

INSERT INTO oauth2.users(username,password,enabled)
VALUES ('priya','priya', true);

INSERT INTO oauth2.users(username,password,enabled)
VALUES ('naveen','naveen', true);

INSERT INTO oauth2.user_roles (username, role)
VALUES ('priya', 'ROLE_USER');

INSERT INTO oauth2.user_roles (username, role)
VALUES ('naveen', 'ROLE_ADMIN');

INSERT INTO oauth2.user_roles (username, role)
VALUES ('naveen', 'ROLE_USER');


--


INSERT INTO oauth2.users(username,password,enabled)
VALUES ('john','123', true);

INSERT INTO oauth2.users(username,password,enabled)
VALUES ('tom','111', true);

INSERT INTO oauth2.user_roles (username, role)
VALUES ('john', 'USER');

INSERT INTO oauth2.user_roles (username, role)
VALUES ('tom', 'ADMIN');

--


INSERT INTO oauth2.users(username,password,enabled)
VALUES ('user1','pass', true);

INSERT INTO oauth2.users(username,password,enabled)
VALUES ('admin','nimda', true);

INSERT INTO oauth2.user_roles (username, role)
VALUES ('user1', 'USER');

INSERT INTO oauth2.user_roles (username, role)
VALUES ('admin', 'ADMIN');
