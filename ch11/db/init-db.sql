-- create table for images

CREATE TABLE images
(
  imageid serial UNIQUE PRIMARY KEY,
  description character varying(10485760) NOT NULL,
  url character varying(255) NOT NULL
);

ALTER TABLE images
  OWNER TO dockeruser;
ALTER ROLE dockeruser CONNECTION LIMIT -1;

-- add image data
INSERT INTO images (description, url) VALUES('Vulture image', 'images/vulture.png');
INSERT INTO images (description, url) VALUES('Image of three female lionesses', 'images/3-female-lions.png');
INSERT INTO images (description, url) VALUES('Antelopes image', 'images/antelopes.png');
INSERT INTO images (description, url) VALUES('Birds image', 'images/birds.png');
INSERT INTO images (description, url) VALUES('Water buffalo image', 'images/buffalo.png');
INSERT INTO images (description, url) VALUES('Image of a cheetah', 'images/cheetah.png');
INSERT INTO images (description, url) VALUES('Image of mother and child elefant', 'images/elephants.png');
INSERT INTO images (description, url) VALUES('Jackal image', 'images/jackal.png');
INSERT INTO images (description, url) VALUES('Giraffe image', 'images/giraffe.png');
INSERT INTO images (description, url) VALUES('Image of a bunch of hippos', 'images/hippos.png');
INSERT INTO images (description, url) VALUES('Image of a male lion', 'images/male-lion.png');
INSERT INTO images (description, url) VALUES('Image of a lonely zebra', 'images/zebra.png');
