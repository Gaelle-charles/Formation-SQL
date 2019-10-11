# Afficher les livres qui n'ont âs été rendus à la bibliotheque ?
#On recherche les livres ayant une date_rendu NULL.alter
# /!\ IS NULL et non pas =NULL /!\
SELECT id_livre FROM emprunt WHERE date_rendu IS NULL;