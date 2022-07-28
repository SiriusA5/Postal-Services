CREATE TABLE place
(
  city VARCHAR(20) NOT NULL,
  state VARCHAR(20) NOT NULL,
  PRIMARY KEY (city)
);

CREATE TABLE parcel
(
  p_id INT NOT NULL,
  To_address VARCHAR(20) NOT NULL,
  From_address VARCHAR(20) NOT NULL,
  weight INT NOT NULL,
  type VARCHAR(20) NOT NULL,
  PRIMARY KEY (p_id)
);

CREATE TABLE employee
(
  age VARCHAR(20) NOT NULL,
  position VARCHAR(20) NOT NULL,
  name VARCHAR(20) NOT NULL,
  Email_id VARCHAR(20) NOT NULL,
  E_ID VARCHAR(20) NOT NULL,
  PRIMARY KEY (E_ID)
);

CREATE TABLE ware_house
(
  w_ID VARCHAR(20) NOT NULL,
  w_name VARCHAR(20) NOT NULL,
  PRIMARY KEY (w_ID)
);

CREATE TABLE package_destination
(
  p_city VARCHAR(20) NOT NULL,
  p_state VARCHAR(20) NOT NULL,
  w_ID VARCHAR(20) NOT NULL,
  PRIMARY KEY (p_city),
  FOREIGN KEY (w_ID) REFERENCES ware_house(w_ID)
);

CREATE TABLE post_office
(
  office_id VARCHAR(20) NOT NULL,
  name VARCHAR(20) NOT NULL,
  type VARCHAR(20) NOT NULL,
  city VARCHAR(20) NOT NULL,
  PRIMARY KEY (office_id),
  FOREIGN KEY (city) REFERENCES place(city)
);

CREATE TABLE customer
(
  c_id INT NOT NULL,
  c_name VARCHAR(20) NOT NULL,
  c_email_id VARCHAR(20) NOT NULL,
  c_mobile_number VARCHAR(20) NOT NULL,
  c_address VARCHAR(20) NOT NULL,
  office_id VARCHAR(20) NOT NULL,
  PRIMARY KEY (c_id),
  FOREIGN KEY (office_id) REFERENCES post_office(office_id)
);

CREATE TABLE requirements
(
  c_id INT NOT NULL,
  p_id INT NOT NULL,
  PRIMARY KEY (c_id, p_id),
  FOREIGN KEY (c_id) REFERENCES customer(c_id),
  FOREIGN KEY (p_id) REFERENCES parcel(p_id)
);

CREATE TABLE works_in
(
  E_ID VARCHAR(20) NOT NULL,
  office_id VARCHAR(20) NOT NULL,
  PRIMARY KEY (E_ID, office_id),
  FOREIGN KEY (E_ID) REFERENCES employee(E_ID),
  FOREIGN KEY (office_id) REFERENCES post_office(office_id)
);

CREATE TABLE supplies_to
(
  w_ID VARCHAR(20) NOT NULL,
  office_id VARCHAR(20) NOT NULL,
  PRIMARY KEY (w_ID, office_id),
  FOREIGN KEY (w_ID) REFERENCES ware_house(w_ID),
  FOREIGN KEY (office_id) REFERENCES post_office(office_id)
);


desc place;
desc parcel;
desc employee;
desc ware_house;
desc package_destination;
desc  post_office;
desc customer;
desc requirements;
desc works_in;
desc supplies_to;


-- place
insert into place values('chennai','tamilnadu');
insert into place values('kochi','kerala');
insert into place values('hyderabad','telangana');
insert into place values('mumbai','maharashtra');
insert into place values('kolkatha','westbengal');
insert into place values('ahmedabad','gujarat');
insert into place values('banglore','karnataka');
insert into place values('indore','madhyapradesh');

--parcel






insert into employee values('21','multitasking_staff','raju','raju@gmail.com','raju01');
insert into employee values('22','postman','ramu','ramu@gmail.com','ramu02');
insert into employee values('23','mailgaurd','roja','roja@gmail.com','roja03');
insert into employee values('24','postalassitant','frank','frank@gmail.com','frank04');
insert into employee values('25','postman','shasta','shasta@gmail.com','shasta05');
insert into employee values('26','postman','brain','brain@gmail.com','brain06');
insert into employee values('27','postalassitant','jose','jose@gmail.com','jose07');
insert into employee values('28','postman','carol','carol@gmail.com','carol08');
insert into employee values('21','mailgaurd','jason','jason@gmail.com','jason09');
insert into employee values('22','postalassitant','ayako','ayako@gmail.com','ayako10');
insert into employee values('23','mailgaurd','john','john@gmail.com','john11');
insert into employee values('24','postalassitant','beverly','beverly@gmail.com','beverly12');
insert into employee values('25','mailgaurd','george','george@gmail.com','george13');
insert into employee values('26','postman','edmond','edmond@gmail.com','edmond14');
insert into employee values('27','postalassitant','kevin','kevin@gmail.com','kevin15');

Insert into  ware_house values ('1','sectorA');
Insert into  ware_house values ('2','sectorB');
Insert into  ware_house values ('3','sectorC');
Insert into  ware_house values('4','sectorD');
Insert into  wore_house values ('5','sectorE');
Insert into  wore_house values ('6','sectorF');
Insert into  wore_house values('7','sectorG');
Insert into  wore_house values('8','sectorH');
Insert into  wore_house values('9','sectorI');
Insert into  wore_house values('10','sectorJ');
Insert into  wore_house values('11','sectorK');
Insert into  wore_house values('12','sectorL');
Insert into  wore_house values('13','sectorM');
Insert into  wore_house values('14','sectorN');
Insert into  wore_house values('15','sectorO');
