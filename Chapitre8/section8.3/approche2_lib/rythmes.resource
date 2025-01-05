*** Settings ***
Library          BatterieMusicca.py
Library          SeleniumLibrary


*** Keywords ***
Acceder a Musicca Batterie
    Open Browser       https://www.musicca.com/fr/batterie/       chrome
    Maximize Browser Window

bpm
    Sleep     333ms 
    
Rythme1
    # Mesure 1
    Grosse Caisse
    bpm
    Hi Hat Ferme
    bpm
    Caisse Claire
    bpm
    Hi Hat Ferme
    bpm
    Hi Hat Ferme
    bpm
    Grosse Caisse
    bpm
    Caisse Claire
    bpm
    Hi Hat Ferme
    bpm


Rythme2
    # Mesure 1 - Introduction avec Hi Hat et Grosse Caisse
    Hi Hat Ferme
    Sleep    100ms
    Grosse Caisse
    Sleep    150ms
    Hi Hat Ferme
    Sleep    100ms
    Caisse Claire
    Sleep    120ms
    Cymbale Ride
    Sleep    180ms

    # Mesure 2 - Transition avec Toms et Cymbales
    Hi Hat Ferme
    Sleep    90ms
    Tom Grave
    Sleep    130ms
    Hi Hat Ferme
    Sleep    100ms
    Cymbale Crash
    Sleep    200ms
    Tom Aigu
    Sleep    110ms
    Grosse Caisse
    Sleep    120ms

    # Mesure 3 - Dynamique et percussions croisées
    Hi Hat Ouvert
    Sleep    90ms
    Caisse Claire
    Sleep    150ms
    Hi Hat Ferme
    Sleep    100ms
    Cymbale Ride
    Sleep    180ms
    Tom Bas
    Sleep    110ms
    Hi Hat Ferme
    Sleep    100ms
    Grosse Caisse
    Sleep    130ms

    # Mesure 4 - Clôture percutante
    Cymbale Crash
    Sleep    150ms
    Hi Hat Ferme
    Sleep    100ms
    Tom Grave
    Sleep    120ms
    Caisse Claire
    Sleep    100ms
    Cymbale Ride
    Sleep    200ms
    Grosse Caisse
    Sleep    180ms
    Cymbale Crash
    Sleep    250ms

Rythme3
    # Mesure 1 - Introduction avec
    Hi Hat Ferme
    Sleep    100ms
    Grosse Caisse
    Sleep    150ms
    Hi Hat Ferme
    Sleep    100ms
    Caisse Claire
    Sleep    120ms
    Cymbale Ride
    Sleep    200ms



Rythme4
    Grosse Caisse
    bpm
    Hi Hat Ferme
    bpm
    Caisse Claire
    bpm
    Hi Hat Ferme
    bpm
    Cymbale Ride
    bpm
    Hi Hat Ferme
    bpm
    Tom Grave
    bpm
    Hi Hat Ferme
    bpm
    Caisse Claire
    bpm
    Cymbale Crash
    bpm


Rythme_Generated_by_AI_1
    Hi Hat Ferme
    Grosse Caisse
    bpm
    Hi Hat Ferme
    bpm
    Caisse Claire
    bpm
    Hi Hat Ferme
    bpm
    Hi Hat Ferme
    bpm
    Grosse Caisse
    bpm
    Caisse Claire
    bpm
    Hi Hat Ferme
    bpm

Rythme_Generated_by_AI_2
    Hi Hat Ferme
    Grosse Caisse
    Hi Hat Ferme
    Caisse Claire
    Hi Hat Ferme
    Hi Hat Ferme
    Grosse Caisse
    Caisse Claire
    Hi Hat Ferme

Rythme_Generated_by_AI_3
    Hi Hat Ferme
    Grosse Caisse
    Hi Hat Ferme
    Caisse Claire
    Hi Hat Ferme
    Hi Hat Ferme
    Grosse Caisse
    Caisse Claire
    Hi Hat Ferme
    Cymbale Crash
    Hi Hat Ouvert
    Tom Aigu
    Hi Hat Pied
    Tom Grave
    Caisse Claire Baguettes
    Tom Bas
    Hi Hat Ouvert
    Grosse Caisse
    Cymbale Ride
    Hi Hat Ferme

Rythme_Generated_by_AI_4
    Hi Hat Ferme
    Grosse Caisse
    Hi Hat Ferme
    Caisse Claire
    Hi Hat Ferme
    Hi Hat Ferme
    Grosse Caisse
    Caisse Claire
    Hi Hat Ferme
    Bpm

Rythme_Generated_by_AI_5
    Hi Hat Ferme
    Grosse Caisse
    Hi Hat Ferme
    Caisse Claire
    Hi Hat Ferme
    Hi Hat Ferme
    Grosse Caisse
    Caisse Claire
    Hi Hat Ferme

Rythme_Generated_by_AI_6
    Hi Hat Ferme
    Grosse Caisse
    Hi Hat Ferme
    Caisse Claire
    Hi Hat Ferme
    Hi Hat Ferme
    Grosse Caisse
    Caisse Claire
    Hi Hat Ferme

Rythme_Generated_by_AI_7
    Hi Hat Ferme
    Grosse Caisse
    bpm
    Hi Hat Ferme
    bpm
    Caisse Claire
    bpm
    Hi Hat Ferme
    bpm
    Hi Hat Ferme
    bpm
    Grosse Caisse
    bpm
    Caisse Claire
    bpm
    Hi Hat Ferme
    bpm

Rythme_Generated_by_AI_8
    Grosse Caisse
    Caisse Claire Baguettes
    Tom Aigu
    Cymbale Crash
    Hi Hat Ferme
    Tom Grave
    Caisse Claire
    Hi Hat Ouvert
    Grosse Caisse
    Tom Bas
    Cymbale Ride
    Hi Hat Ferme
    Grosse Caisse
    Tom Aigu
    Caisse Claire Baguettes
    Hi Hat Ouvert
    Grosse Caisse
    Caisse Claire
    Tom Grave
    Cymbale Crash
    Hi Hat Ferme
    Caisse Claire Baguettes
    Tom Bas
    Hi Hat Pied
    Grosse Caisse
    Tom Aigu
    Cymbale Crash
    Hi Hat Ouvert
    Grosse Caisse
    Caisse Claire
    Tom Grave
    Hi Hat Pied
