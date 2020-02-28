/**
 * \project Reccette avec tableau
 * \author Yann Fanha
 * \version 1.0
 * \date 25.02.2020
 * \descripition Programme qui indique et calcule les ingrédients en fonction de la recette choisi et du nombre de personnes
 */

#include <stdio.h>
#include <stdlib.h>
#include <Windows.h>
#pragma execution_character_set("utf-8")


#define RECETTE {{125,0.25,0,0,1.5,0.5,0.5,0}, {125,0.1875,0.0625,0,1.5,0.5,0.5,0},{125,0,0,0.25,1.5,0.5,0.5,0},{75,0.125,0,0,0.5,0.5,1,2.5},{62.5,0.075,0,0,0.5,0.25,0.75,2.5}}
#define NBR_DE_RECETTE 5
#define NBR_D_INGREDIENTS 8

/**
 * \author Yann Fanha
 * \date 26.02.2020
 * \description Fonction qui affiche les ingredients
 * @param i
 * @param qteIngredient
 */
void affichage(int i, float qteIngredient){
    switch(i) {
        case 0:
            printf("\nFarine : %.2f g", qteIngredient);
            break;
        case 1:
            printf("\nLait : %.2f l", qteIngredient);
            break;
        case 2:
            printf("\nBière : %.2f l", qteIngredient);
            break;
        case 3:
            printf("\nEau : %.2f l", qteIngredient);
            break;
        case 4:
            printf("\nOeufs : %.0f", qteIngredient);
            break;
        case 5:
            printf("\nSel : %.0f pincées", qteIngredient);
            break;
        case 6:
            printf("\nBeurre : %.0f cuillères", qteIngredient);
            break;
        case 7:
            printf("\nLevure : %.2f g", qteIngredient);
            break;
    }
}

/**
 * \author Yann Fanha
 * \date 25.02.2020
 * \description Effectue les calcules et appelle la fonction d'affichage
 * @param recetteChoisie
 * @param nbrPersonnes
 */
void calculs(int recetteChoisie, int nbrPersonnes){
    float qteIngredient;

    //Pour trouver la bonner recette dans le tableau (tableau commence de 0)
    recetteChoisie = recetteChoisie-1;


    float recettes[NBR_DE_RECETTE][NBR_D_INGREDIENTS] = RECETTE;


    printf("\nLes ingédients nécessaires pour %d personnes sont :", nbrPersonnes);

    //Calcule des ingredients et affichage un par un
    for (int i = 0; i <= NBR_D_INGREDIENTS - 1; i++){
        qteIngredient = recettes[recetteChoisie][i];

        //calcule de la quantitié d'ingrédients avec le nombre de personne
        qteIngredient= qteIngredient * nbrPersonnes;

        //Appelle la fonction de l'affichage si la quantité de l'ingredient est different de 0
        if (qteIngredient != 0) {
            affichage(i, qteIngredient);
        }
    }
    printf("\n\nBonne dégustation !");
}

/**
 * \author Yann Fanha
 * \date 25.02.2020
 * \description Demande le nombre de personne qui mangeront la recette choisie
 * @param recetteChoisie
 * @return nbrPersonnes
 */
int NombreDePersonnes(int recetteChoisie){
    int nbrPersonnes;

    switch(recetteChoisie){
        case 1: printf("\nEntrez le nombre de personnes qui mangeront des crêpes classsiques :");
            break;

        case 2: printf("\nEntrez le nombre de personnes qui mangeront des crêpes à la bière :");
            break;

        case 3: printf("\nEntrez le nombre de personnes qui mangeront des crêpes légères :");
            break;

        case 4: printf("\nEntrez le nombre de personnes qui mangeront des gauffres :");
            break;

        case 5: printf("\nEntrez le nombre de personnes qui mangeront des pancakes :");
            break;
    }
    scanf("%d", &nbrPersonnes);

    return nbrPersonnes;
}

/**
 * \author Yann Fanha
 * \date 27.02.2020
 * \description Affiche ce qu'a choisi l'utilisateur
 * @param recetteChoisie
*/
void affichageDuChoix(int recetteChoisie){
    switch(recetteChoisie){
        case 1:
            printf("\nVous avez choisi la recette des crêpes classiques\n");
            break;
        case 2:
            printf("\nVous avez choisi la recette des crêpes à la bière\n");
            break;
        case 3:
            printf("\nVous avez choisi la recette des crêpes légères\n");
            break;
        case 4:
            printf("\nVous avez choisi la recette des gauffres\n");
            break;
        case 5:
            printf("\nVous avez choisi la recette des pancakes\n");
            break;
    }
}

/**
 * \author Yann Fanha
 * \date 25.02.2020
 * \description Affiche la liste des recettes possible et demande a l'utilisateur laquel il veut faire
 * @return recetteChoisie
*/
int choix(){
    int recetteChoisie;
    do {
        system("cls");

        printf("----CHANDELEUR 2 le retour----\n\n");

        //Demande de la recette
        printf("\nChoisissez la recette que vous souhaiteriez faire :");
        printf("\n1 - crêpes classiques");
        printf("\n2 - crêpes à la bière");
        printf("\n3 - crêpes légères");
        printf("\n4 - gauffres");
        printf("\n5 - pancake");
        printf("\nFaites votre choix :");
        fflush(stdin);
        scanf("%d", &recetteChoisie);
    }while(recetteChoisie > 5 || recetteChoisie < 1);

    return recetteChoisie;
}

int main() {
    SetConsoleOutputCP(65001);

    int recetteChoisie, nbrPersonnes;

    //Demander ce que veut faire l'user et recuperer son choix
    recetteChoisie = choix();

    //afficher le choix de l'user
    affichageDuChoix(recetteChoisie);

    //Demander le nombre de personnes qui mangent des crêpes
    nbrPersonnes = NombreDePersonnes(recetteChoisie);

    //Calculer les ingrédients en fonction de la recette et appele la fonction de l'affichage
    calculs(recetteChoisie, nbrPersonnes);



    printf("\n\n");
    system("Pause");
    return 0;
}