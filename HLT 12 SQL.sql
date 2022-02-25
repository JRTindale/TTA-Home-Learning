Create Database ownedClothes;

USE ownedClothes

Create Table material(
    ID INT NOT NULL PRIMARY KEY,
    material VARCHAR(200) NOT NULL
    );


Create Table clothing_details(
    garment_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    item_Type VARCHAR(100) NOT NULL,
    primary_Colour VARCHAR(30) NOT NULL,
    secondary_Colour VARCHAR(30) NULL,
    tertiary_Colour VARCHAR(30) NULL,
    material_ID INT NOT NULL,
    brand VARCHAR(50) NULL,
    isFormal BIT NOT NULL,
    CONSTRAINT FK_MaterialID FOREIGN KEY (material_ID) REFERENCES material(ID)
    );


EXPLAIN clothing_details;
EXPLAIN material;

INSERT INTO material(
ID,material
)
VALUES
(1,'cotton'),
(2, 'denim'),
(3, 'tweed'),
(4, 'quilted'),
(5, 'veganLeather');

INSERT INTO clothing_details(
item_Type,primary_Colour,secondary_Colour,tertiary_Colour,material_id,brand,isFormal
)
VALUES
('tshirt','black',null,null,1,'allSaints',0),
('tshirt','blue',null,null,1,'allSaints',0),
('tshirt','black',null,null,1,'allSaints',0),
('tshirt','red',null,null,1,'allSaints',0),
('shirt','white',null,null,1,'allSaints',0),
('shirt','green',null,null,1,'allSaints',0),
('shirt','white',null,null,1,'TMLewis',1),
('jeans','black',null,null,2,'allSaints',0),
('jeans','indigo',null,null,2,'armani',0),
('jeans','lightBlue',null,null,2,'levis',0),
('tshirt','green','white',null,1,'levis',0),
('sportsJacket','brown',null,null,3,'hugoBoss',1),
('trainers','cream','brown','blue',4,'nike',0),
('shoes','black','yellow',null,5,'docMarten',0),
('shoes','black','yellow',null,5,'docMarten',0);

update clothing_details
set item_Type = 'hoodie'
where garment_ID = 2;

delete from clothing_details
where garment_ID = 15;

select *
from clothing_details cd
join material m on m.id = cd.material_ID;

select primary_Colour
from clothing_details cd;

select cd.item_type, m.material, count(1) as numberOfItems
from clothing_details cd
join material m on m.id = cd.material_ID
group by cd.item_type, m.material;

select *
from clothing_details cd
join material m on m.id = cd.material_ID
order by cd.garment_ID;

select *
from clothing_details cd
where cd.brand = 'nike';