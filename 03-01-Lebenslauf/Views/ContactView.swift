//
//  ContactView.swift
//  03-01-Lebenslauf
//
//  Created by Kasi Weichenberger on 20.08.24.
//
import SwiftUI

struct ContactView: View {
    var body: some View {
        HStack {
            // Text für die Überschrift "Kontakt", mit benutzerdefinierter Schriftart und Gewicht
            Text("Kontakt:")
                .font(Font.custom("Lato", size: 24).weight(.semibold))
                .foregroundColor(.black)
            
            // Platzhalter auf der linken Seite des Kontaktbereichs
            Spacer()
            
            // Github-Icon als Bild, skalierbar und an die Größe anpassbar
            Image("github")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(.trailing, 8)
            
            // LinkedIn-Icon als Bild, skalierbar und an die Größe anpassbar
            Image("linkedin")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(.trailing, 8)
            
            // E-Mail-Icon als Systembild, mit größerer Schriftgröße und schwarzer Farbe
            Image(systemName: "envelope")
                .font(.title)
                .foregroundColor(.black)
            
            // Telefon-Icon als Systembild, mit größerer Schriftgröße und schwarzer Farbe
            Image(systemName: "phone.fill")
                .font(.title)
                .foregroundColor(.black)
        }
        .padding(.horizontal, 15)
    }
}

#Preview {
    ContactView()
}
