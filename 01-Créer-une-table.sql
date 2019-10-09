# Pour faire un commentaire
# On crée la table "employes" uniquement si elle n'existe pas
# DEFAULT pour avoir un valeur par défaut  ex : DEFAULT NULL ou DEFAULT 'secretariat'
create table if not exists employes (
#je précise les colonnes de ma table
id_employes int(3) NOT NULL auto_increment,
prenom varchar (50) NOT NULL,
nom varchar (20) NOT NULL,
sexe enum ('m','f') NOT NULL,
service varchar (30) DEFAULT NULL,
date_embauche date default null,
salaire float default null,
primary key (id_employes)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;