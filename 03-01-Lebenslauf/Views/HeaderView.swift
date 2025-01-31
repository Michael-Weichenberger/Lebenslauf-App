//
//  HeaderView.swift
//  03-01-Lebenslauf
//
//  Created by Kasi Weichenberger on 20.08.24.
//

import SwiftUI

struct HeaderView: View {
    // Modell, das die Informationen für den Header enthält
    var model: HeaderModel
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                // Platzhalter auf der linken Seite des Headers
                Spacer()
                
                VStack {
                    // Profilbild des Benutzers, als Kreis formatiert und mit einem weißen Rand und Schatten
                    Image(model.profileImageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 4)
                        )
                        .shadow(radius: 10)
                        .padding(.top, 50)
                    
                    // Name des Benutzers, in benutzerdefinierter Schriftart und fettdruck
                    Text(model.name)
                        .font(Font.custom("Inter", size: 24).weight(.semibold))
                        .foregroundColor(.black)
                        .padding(.top, 10)
                    
                    // Jobtitel des Benutzers, in benutzerdefinierter Schriftart und mittlerem Gewicht
                    Text(model.jobTitle)
                        .font(Font.custom("Inter", size: 24).weight(.medium))
                        .foregroundColor(Color(red: 0.65, green: 0.19, blue: 0.19))
                        .padding(.bottom, 10)
                    
                }
                // Platzhalter auf der rechten Seite des Headers
                Spacer()
            }
            .padding(.horizontal, 16)
            
            // Trennlinie unter dem Header
            Divider()
                .padding(.top, 20)
        }
        .padding()
    }
}

#Preview {
    // Beispielmodell für die Vorschau
    let exampleModel = HeaderModel(
        name: "Michael Weichenberger",
        jobTitle: "Junior App Developer",
        profileImageName: "bewerbungsfoto"
    )
    
    HeaderView(model: exampleModel)
}
