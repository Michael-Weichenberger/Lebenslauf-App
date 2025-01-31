//
//  HeaderViewAlternative.swift
//  03-01-Lebenslauf
//
//  Created by Kasi Weichenberger on 20.08.24.
//

import SwiftUI

struct HeaderViewAlternative: View {
    // Modell, das die Header-Informationen enthält (Name, Jobtitel und Profilbild)
    var model: HeaderModel
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                // Platzhalter auf der linken Seite des Headers
                Spacer()
                
                VStack {
                    // Profilbild des Benutzers, in ein abgerundetes Rechteck zugeschnitten
                    Image(model.profileImageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 3)
                        )
                        .shadow(radius: 5)
                        .padding(.top, 30)
                    
                    // Name des Benutzers, in benutzerdefinierter Schriftart und fett gedruckt
                    Text(model.name)
                        .font(Font.custom("Inter", size: 20).weight(.bold))
                        .foregroundColor(.blue)
                        .padding(.top, 8)
                    
                    // Jobtitel des Benutzers, in benutzerdefinierter Schriftart und regulär
                    Text(model.jobTitle)
                        .font(Font.custom("Inter", size: 20).weight(.regular))
                        .foregroundColor(.gray)
                        .padding(.bottom, 8)
                }
                // Platzhalter auf der rechten Seite des Headers
                Spacer()
            }
            .padding(.horizontal, 20)
            
            // Trennlinie unter dem Header
            Divider()
                .padding(.top, 15)
        }
        .padding() // Abstand um den gesamten VStack hinzufügen
    }
}
