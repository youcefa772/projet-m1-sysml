package contexte {
    private import parts::*;

    part def Contexte {
        part conducteur : Conducteur;
        part client : ClientCentre;
        part riverain : Riverain;
        part exploitant : Exploitant;
        part personnelBoutique : PersonnelBoutique;
        part personnelRetrait : PersonnelRetrait;
        part technicien : Technicien;
        part parking : ParkingIntelligent;
        part vehicule : Vehicule;
        part smartphone : Smartphone;
        part systemeBoutique : SystemeBoutique;
        part systemePaiement : SystemePaiement;
        part reseauElectrique : ReseauElectrique;

        flow reserve from conducteur to parking;
        flow loue from riverain to parking;
        flow deposeAchats from client to parking;
        flow enregistreDepot from personnelBoutique to parking;
        flow remetAchats from personnelRetrait to parking;
        flow supervise from exploitant to parking;
        flow entretient from technicien to parking;
        flow recharge from parking to vehicule;
        flow notifie from parking to smartphone;
        flow commande from systemeBoutique to parking;
        flow debite from parking to systemePaiement;
        flow alimente from reseauElectrique to parking;
        connect conducteur to vehicule;
    }
}
