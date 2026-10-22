package useCases {
    private import parts::*;

    actor usager : Usager;
    actor conducteur : Conducteur :> usager;
    actor conducteurVE : ConducteurVE :> conducteur;
    actor client : ClientCentre :> usager;
    actor exploitant : Exploitant;
    actor personnelBoutique : PersonnelBoutique;
    actor personnelRetrait : PersonnelRetrait;
    actor technicien : Technicien;

    use case reserverPlace { ref actor conducteur; }
    use case obtenirConseilStationnement { ref actor conducteur; }
    use case demanderRecharge { ref actor conducteurVE; }
    use case retrouverVehicule { ref actor client; }
    use case deposerAchats { ref actor client; ref actor personnelBoutique; }
    use case retirerAchats { ref actor client; ref actor personnelRetrait; }
    use case regrouperAchats { ref actor personnelRetrait; }
    use case superviserExploitation { ref actor exploitant; }
    use case configurerAffectationPlaces { ref actor exploitant; }
    use case maintenirEquipements { ref actor technicien; }
}
