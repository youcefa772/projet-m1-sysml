package requirements {
    requirement specificationsParking {
        doc /* le système répond aux catégories d'exigences ci-dessous */
    }
    requirement fonctions specializes specificationsParking {
        doc /* le système doit comprendre les fonctions ci-dessous */
    }
    requirement interactionsMaterielles specializes specificationsParking {
        doc /* le système doit disposer des interactions matérielles ci-dessous */
    }
    requirement contraintes specializes specificationsParking {
        doc /* le système doit respecter les contraintes ci-dessous */
    }

    /* fonctions */
    requirement fonctionsConseil specializes fonctions {
        doc /* conseiller le conducteur à l'arrivée et au retour */
    }
    requirement fonctionsReservation specializes fonctions {
        doc /* gérer chaque place comme une ressource réservable */
    }
    requirement fonctionsRecharge specializes fonctions {
        doc /* recharger un VE sur n'importe quelle place */
    }
    requirement fonctionsAchats specializes fonctions {
        doc /* prendre en charge les achats pendant la visite */
    }

    /* conseil */
    requirement mesureOccupation specializes fonctionsConseil {
        doc /* détecter les places libres dans 98 % des cas, en 30 s */
    }
    requirement previsionAffluence specializes fonctionsConseil {
        doc /* prévoir l'occupation par zone sur 2 h */
    }
    requirement recommandationZone specializes fonctionsConseil {
        doc /* recommander la zone la plus rapide */
    }
    requirement localisationVehicule specializes fonctionsConseil {
        doc /* afficher la place du véhicule en 5 s */
    }

    /* réservation */
    requirement blocagePlace specializes fonctionsReservation {
        doc /* bloquer ou libérer une place en 2 s */
    }
    requirement reconnaissanceVehicule specializes fonctionsReservation {
        doc /* abaisser le bitonio en 10 s après lecture de la plaque */
    }
    requirement reattributionPlace specializes fonctionsReservation {
        doc /* libérer une réservation non utilisée après 1 h */
    }

    /* recharge */
    requirement planificationRecharge specializes fonctionsRecharge {
        doc /* servir 90 % des demandes avant le départ */
    }
    requirement capaciteRobot specializes fonctionsRecharge {
        doc /* au moins 20 recharges par jour et par robot */
    }
    requirement deplacementRobot specializes fonctionsRecharge {
        doc /* rouler à 4,9 km/h au plus, arrêt devant une personne */
    }

    /* achats */
    requirement enregistrementDepot specializes fonctionsAchats {
        doc /* enregistrer un dépôt en 30 s */
    }
    requirement regroupementCommandes specializes fonctionsAchats {
        doc /* regrouper au moins 3 boutiques dans une commande */
    }
    requirement remiseBonClient specializes fonctionsAchats {
        doc /* remettre 99,5 % des achats au bon client */
    }

    /* interactions matérielles */
    requirement reutilisationExistant specializes interactionsMaterielles {
        doc /* réutiliser capteurs, panneaux et lecteurs de plaques */
    }
    requirement connecteursRecharge specializes interactionsMaterielles {
        doc /* être compatible Type 2 et CCS */
    }
    requirement paiementAutomatique specializes interactionsMaterielles {
        doc /* débiter automatiquement à la sortie */
    }
    requirement notificationSmartphone specializes interactionsMaterielles {
        doc /* notifier l'usager sur son smartphone */
    }

    /* contraintes */
    requirement securiteElectrique specializes contraintes {
        doc /* rester sous 22 kVA en zone couverte */
    }
    requirement donneesPersonnelles specializes contraintes {
        doc /* conserver les images de plaques 1 mois au plus */
    }
    requirement accessibilite specializes contraintes {
        doc /* préserver les places PMR */
    }
    requirement modeDegrade specializes contraintes {
        doc /* rester utilisable en cas de panne */
    }
}
