//
//  PassarosService.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 13/05/22.
//

import Foundation
import CoreLocation

struct PassarosService {
    
    
    
    let passaros: [Passaro] = [
        Passaro(id: UUID(), nome: "Pato Real", nomeImagem: "pato", tipo:"Pato", habitat: Habitat.Floresta, background: Background.backFloresta, latitudePassaro: 48.85341, longigudePassaro: 2.3488),
        Passaro(id: UUID(), nome: "Pombo Doméstico", nomeImagem: "pombo", tipo:"Pombo", habitat: Habitat.Floresta, background: Background.backFloresta, latitudePassaro: 36.81897, longigudePassaro: 10.16579),
        Passaro(id: UUID(), nome: "Gavião Cauda Curta", nomeImagem: "gaviao", tipo:"Gavião", habitat: Habitat.Montanha, background: Background.backMontanha, latitudePassaro: -3.731862, longigudePassaro: -38.526669),
        Passaro(id: UUID(), nome: "Flamingo da Puna", nomeImagem: "flamingo", tipo:"Flamingo", habitat: Habitat.Oceano, background: Background.backOceano, latitudePassaro: -33.447487, longigudePassaro: -70.673676),
        Passaro(id: UUID(), nome: "Urubu Cabeça Vermelha", nomeImagem: "abutre", tipo:"Abutre", habitat: Habitat.Floresta, background: Background.backFloresta, latitudePassaro: 51.213890, longigudePassaro: -102.462776),
        Passaro(id: UUID(), nome: "Pato Mandarim", nomeImagem: "pato-mandarim", tipo:"Pato", habitat: Habitat.Floresta, background: Background.backFloresta, latitudePassaro: 29.117001, longigudePassaro: 110.478996),
        Passaro(id: UUID(), nome: "Pato Pequim", nomeImagem: "pato-pequim", tipo:"Pato", habitat: Habitat.Floresta, background: Background.backFloresta, latitudePassaro: 35.44778, longigudePassaro: 139.6425),
        Passaro(id: UUID(), nome: "Cabeça Branca", nomeImagem: "american-eagle", tipo:"Águia", habitat: Habitat.Montanha, background: Background.backMontanha, latitudePassaro: 47.751076, longigudePassaro: -120.740135),
        Passaro(id: UUID(), nome: "Coruja das Neves", nomeImagem: "coruja-neve", tipo:"Coruja", habitat: Habitat.Neve, background: Background.backNeve, latitudePassaro: 66.160507, longigudePassaro: -153.369141),
        Passaro(id: UUID(), nome: "Coruja Marrom", nomeImagem: "coruja-marron", tipo:"Coruja", habitat: Habitat.Floresta, background: Background.backFloresta, latitudePassaro: 51.213890, longigudePassaro: -102.462776),
        Passaro(id: UUID(), nome: "Albatroz Errante", nomeImagem: "albatroz-errante", tipo:"Albatroz", habitat: Habitat.Oceano, background: Background.backOceano, latitudePassaro: -31.083332, longigudePassaro: 150.916672),
        Passaro(id: UUID(), nome: "Condor Andino", nomeImagem: "condor-andes", tipo:"Abutre", habitat: Habitat.Montanha, background: Background.backMontanha, latitudePassaro: -31.083332, longigudePassaro: 150.916672),
        Passaro(id: UUID(), nome: "Abutre do Egito", nomeImagem: "abutre-egito", tipo:"Abutre", habitat: Habitat.Deserto, background: Background.backDeserto, latitudePassaro: -31.083332, longigudePassaro: 150.916672),
        Passaro(id: UUID(), nome: "Arau Comum", nomeImagem: "arau-comum", tipo:"Gaivota", habitat: Habitat.Neve, background: Background.backNeve, latitudePassaro: -31.083332, longigudePassaro: 150.916672),
        Passaro(id: UUID(), nome: "Gaivota do índico", nomeImagem: "gaivota-indico", tipo:"Gaivota", habitat: Habitat.Oceano, background: Background.backOceano, latitudePassaro: -31.083332, longigudePassaro: 150.916672),
        Passaro(id: UUID(), nome: "Dodo", nomeImagem: "dodo", tipo:"Extinto", habitat: Habitat.Extinto, background: Background.backExtinto, latitudePassaro: -31.083332, longigudePassaro: 150.916672)
        
    ]
}

//
//var patoArray: [CLLocationCoordinate2D] = []
//var teste = CLLocation
//teste.
