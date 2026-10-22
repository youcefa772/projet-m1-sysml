package parts {
    /* acteurs */
    part def Usager;
    part def Conducteur :> Usager;
    part def ConducteurVE :> Conducteur;
    part def Riverain :> Conducteur;
    part def ClientCentre :> Usager;
    part def Personnel;
    part def Exploitant :> Personnel;
    part def PersonnelBoutique :> Personnel;
    part def PersonnelRetrait :> Personnel;
    part def Technicien :> Personnel;

    /* contexte */
    part def ParkingIntelligent;
    part def Vehicule;
    part def VehiculeElectrique :> Vehicule;
    part def Smartphone;
    part def SystemeBoutique;
    part def SystemePaiement;
    part def ReseauElectrique;
}
