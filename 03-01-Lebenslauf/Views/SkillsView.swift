//
//  SkillsView.swift
//  03-01-Lebenslauf
//
//  Created by Kasi Weichenberger on 20.08.24.
//

import SwiftUI

struct SkillsView: View {
    var body: some View {
        HStack {
            // Text für die Überschrift "Skills", mit benutzerdefinierter Schriftart und Gewicht
            Text("Skills:")
                .font(Font.custom("Lato", size: 24).weight(.semibold))
                .foregroundColor(.black)
            
            // Platzhalter auf der linken Seite des Skillsbereichs
            Spacer()
            
            // Figma-Icon als Bild, skalierbar und an die Größe anpassbar
            Image("figma")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(.trailing, 8)
            
            // Android-Icon als Bild, skalierbar und an die Größe anpassbar
            Image("android")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(.trailing, 8)
            
            // Apple-Icon als Bild, skalierbar und an die Größe anpassbar
            Image("apple")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(.trailing, 8)
        }
        .padding(.horizontal, 15)
    }
}

#Preview {
    SkillsView()
}
