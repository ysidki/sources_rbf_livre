*** Settings ***
Library           SeleniumLibrary
Resource          Fichier_resource_section5.10.resource

*** Test Cases ***
effectuer une recherche valide sur chrome
    Effectuer une recherche valide sur le navigateur    Chrome

effectuer une recherche valide sur firefox
    Effectuer une recherche valide sur le navigateur    Firefox

afficher contenu des variables
    afficher_contenu_scalaire    ${url}
    afficher_contenu_liste    @{produits}
    afficher_contenu_dictionnaire    &{comptes}

test valeur retournée
    ${result}    Open Browser    https://google.com    chrome
    Log    ${result}
