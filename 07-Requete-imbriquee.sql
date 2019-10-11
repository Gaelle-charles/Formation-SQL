create table if not exists Abonne (
id_abonne int(3) NOT NULL auto_increment,
prenom varchar (20) NOT NULL,
primary key (id_abonne)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;


create table if not exists Livre (
id_livre int(3) NOT NULL auto_increment,
auteur varchar (30) NOT NULL,
titre varchar (30) NOT NULL,
primary key (id_livre)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

create table if not exists Emprunt (
id_emprunt int(3) NOT NULL auto_increment,
id_livre varchar (3) NULL,
id_abonne varchar (3) NULL,
date_sortie date NOT NULL,
date_rendu date NULL,
primary key (id_emprunt)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mjob4 ;

# la création des contraintes se fait aprés les tables.
# Vu que les tables sont déjà créées on va devoir les modifier. 

ALTER TABLE emprunt ADD FOREIGN KEY (`id_livre`) REFERENCES bibliotheque.livre (`id_livre`);

ALTER TABLE emprunt ADD FOREIGN KEY (`id_abonne`) REFERENCES bibliotheque.abonne (`id_abonne`);