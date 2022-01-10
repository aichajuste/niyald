CREATE TABLE recettes(
    `id_recettes` INT(10) UNSIGNED AUTO_INCREMENT NOT NULL,
    `nom` VARCHAR(30) NOT NULL, 
    `description` VARCHAR(200)  NOT NULL, 
    `duree_preparation` VARCHAR(20)  NOT NULL, 
    `duree_cuisson` VARCHAR(20)  NOT NULL, 
    `nombre_calories` INT(20)  NOT NULL, 
    `nombre_parts` INT(20)  NOT NULL, 
    `niveau_difficulté` VARCHAR(20)  NOT NULL, 
    PRIMARY KEY (`id_recettes`));

CREATE TABLE recettes_ingredients (
    `id_rec_ing` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT , 
	`id_recettes`  (10) NOT NULL, 
	`id_ingredients`  (10) NOT NULL , 
	PRIMARY KEY (`id`), 
	KEY `id` (`id`,`id_recettes`), 
	KEY `tbl_recettes` (`id_recettes`), 
	CONSTRAINT `tbl_recettes` FOREIGN KEY (`recettes_id`) REFERENCES 			`recettes` (`id_recettes`), 
	KEY `id` (`id`,`id_ingredients`), 
	KEY `tbl_ingredients` (`id_ingredients`), 
	CONSTRAINT `tbl_ingredients` FOREIGN KEY (`id_ingredients`) REFERENCES 		`ingredients` (`id_ingredients`));

CREATE TABLE ingredients( 
     `id` INT(10) UNSIGNED AUTO_INCREMENT NOT NULL, 
    `reference` VARCHAR(30) NOT NULL, 
    `nom` VARCHAR(200)  NULL, `nombre_calorie` INT(20)  NULL, 
    PRIMARY KEY (`id`));

    CREATE TABLE typeingredients (
        `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, 
        `references` VARCHAR(255)  NOT NULL, 
        `nom` VARCHAR(155) NOT NULL,
        `id_ingred`INT(10) UNSIGNED NOT NULL, 
        PRIMARY KEY (`id`), 
        KEY `id` (`id`,`id_ingred`), 
       KEY `tbl_ingred` (`id_ingred`), 
	   CONSTRAINT `tbl_ingred` FOREIGN KEY (`id_ingred`) REFERENCES 		`ingredients` (`id`));

        CREATE TABLE produits( 
             `id` INT(10) UNSIGNED AUTO_INCREMENT NOT NULL, 
             `reference` VARCHAR(30) NOT NULL, 
             `description` VARCHAR(200) NOT NULL, 
             `date_péremption` DATE NOT NULL, 
             `quantité` INT(20) NULL, 
             `prix` INT(20) NULL, 
             PRIMARY KEY (`id`));

             CREATE TABLE rangements (
                 `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                 `references` VARCHAR(255)  NOT NULL, 
                 `nom` VARCHAR(155) NOT NULL,
                 `id_produits`INT(10) UNSIGNED NOT NULL, 
                 PRIMARY KEY (`id`),
                KEY `id` (`id_produits`),
                KEY `tbl_produits` (`id_produits`),
                 CONSTRAINT `tbl_produits` FOREIGN KEY (`id_produits`) REFERENCES `produits` (`id`));

