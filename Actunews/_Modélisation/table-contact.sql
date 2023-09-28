#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: contact
#------------------------------------------------------------

CREATE TABLE contact(
        id_contact Int  Auto_increment  NOT NULL ,
        fullname   Varchar (80) NOT NULL ,
        email      Varchar (80) NOT NULL ,
        subject    Varchar (80) NOT NULL ,
        message    Text NOT NULL ,
        created_at Datetime NOT NULL
	,CONSTRAINT contact_PK PRIMARY KEY (id_contact)
)ENGINE=InnoDB;

