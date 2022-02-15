Create Database ownedClothes;

USE ownedClothes

Create Table clothing_details(
garment_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
item_Type VARCHAR(100) NOT NULL,
primary_Colour VARCHAR(30) NOT NULL,
secondary_Colour VARCHAR(30) NULL,
tertiary_Colour VARCHAR(30) NULL,
material VARCHAR(200) NOT NULL,
brand VARCHAR(50) NULL,
isFormal BIT NOT NULL);

EXPLAIN clothing_details;

INSERT INTO clothing_details(
item_Type,primary_Colour,secondary_Colour,tertiary_Colour,material,brand,isFormal
)
VALUES
('tshirt','black',null,null,'cotton','allSaints',0),
('tshirt','blue',null,null,'cotton','allSaints',0),
('tshirt','black',null,null,'cotton','allSaints',0),
('tshirt','red',null,null,'cotton','allSaints',0),
('shirt','white',null,null,'cotton','allSaints',0),
('shirt','green',null,null,'cotton','allSaints',0),
('shirt','white',null,null,'cotton','TMLewis',1),
('jeans','black',null,null,'denim','allSaints',0),
('jeans','indigo',null,null,'denim','armani',0),
('jeans','lightBlue',null,null,'denim','levis',0),
('tshirt','green','white',null,'cotton','levis',0),
('sportsJacket','brown',null,null,'tweed','hugoBoss',1),
('trainers','cream','brown','blue','quilted','nike',0),
('shoes','black','yellow',null,'veganLeather','docMarten',0);

select *
from clothing_details;