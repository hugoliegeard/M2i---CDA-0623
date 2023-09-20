#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Category
#------------------------------------------------------------

CREATE TABLE Category(
        id_category Int  Auto_increment  NOT NULL ,
        name        Varchar (80) NOT NULL ,
        slug        Varchar (80) NOT NULL ,
        created_at  Datetime NOT NULL ,
        updated_at  Datetime NOT NULL ,
        deleted_at  Datetime NOT NULL COMMENT "Permet de mettre en place du soft delete" 
	,CONSTRAINT Category_PK PRIMARY KEY (id_category)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: User
#------------------------------------------------------------

CREATE TABLE User(
        id_user    Int  Auto_increment  NOT NULL ,
        firstname  Varchar (255) NOT NULL ,
        lastname   Varchar (255) NOT NULL ,
        username   Varchar (255) NOT NULL COMMENT "Servirait de pseudo pour l'affichage de ses articles"  ,
        email      Varchar (255) NOT NULL ,
        password   Varchar (255) NOT NULL ,
        roles      Varchar (255) NOT NULL ,
        created_at Datetime NOT NULL ,
        updated_at Datetime NOT NULL ,
        deleted_at Datetime NOT NULL COMMENT "Permet de mettre en place du soft delete" 
	,CONSTRAINT User_PK PRIMARY KEY (id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Post
#------------------------------------------------------------

CREATE TABLE Post(
        id_post     Int  Auto_increment  NOT NULL ,
        title       Varchar (255) NOT NULL ,
        slug        Varchar (255) NOT NULL ,
        content     Text NOT NULL ,
        image       Varchar (255) NOT NULL ,
        created_at  Datetime NOT NULL ,
        updated_at  Datetime NOT NULL ,
        deleted_at  Datetime NOT NULL COMMENT "Permet de mettre en place du soft delete"  ,
        id_category Int NOT NULL ,
        id_user     Int NOT NULL
	,CONSTRAINT Post_PK PRIMARY KEY (id_post)

	,CONSTRAINT Post_Category_FK FOREIGN KEY (id_category) REFERENCES Category(id_category)
	,CONSTRAINT Post_User0_FK FOREIGN KEY (id_user) REFERENCES User(id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Keyword
#------------------------------------------------------------

CREATE TABLE Keyword(
        id_keyword   Int  Auto_increment  NOT NULL ,
        name_keyword Varchar (80) NOT NULL ,
        slug_keyword Varchar (80) NOT NULL ,
        created_at   Datetime NOT NULL ,
        updated_at   Datetime NOT NULL ,
        deleted_at   Datetime NOT NULL COMMENT "Permet de mettre en place du soft delete" 
	,CONSTRAINT Keyword_PK PRIMARY KEY (id_keyword)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Comment
#------------------------------------------------------------

CREATE TABLE Comment(
        id_comment Int  Auto_increment  NOT NULL ,
        message    Text NOT NULL ,
        created_at Datetime NOT NULL ,
        updated_at Datetime NOT NULL ,
        deleted_at Datetime NOT NULL COMMENT "Permet de mettre en place du soft delete"  ,
        ip_address Varchar (80) NOT NULL
	,CONSTRAINT Comment_PK PRIMARY KEY (id_comment)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: have
#------------------------------------------------------------

CREATE TABLE post_keyword(
        id_keyword Int NOT NULL ,
        id_post    Int NOT NULL
	,CONSTRAINT have_PK PRIMARY KEY (id_keyword,id_post)

	,CONSTRAINT have_Keyword_FK FOREIGN KEY (id_keyword) REFERENCES Keyword(id_keyword)
	,CONSTRAINT have_Post0_FK FOREIGN KEY (id_post) REFERENCES Post(id_post)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: write
#------------------------------------------------------------

CREATE TABLE post_comment(
        id_post    Int NOT NULL ,
        id_comment Int NOT NULL ,
        id_user    Int NOT NULL
	,CONSTRAINT write_PK PRIMARY KEY (id_post,id_comment,id_user)

	,CONSTRAINT write_Post_FK FOREIGN KEY (id_post) REFERENCES Post(id_post)
	,CONSTRAINT write_Comment0_FK FOREIGN KEY (id_comment) REFERENCES Comment(id_comment)
	,CONSTRAINT write_User1_FK FOREIGN KEY (id_user) REFERENCES User(id_user)
)ENGINE=InnoDB;

