//
//  BerufView.swift
//  03-01-Lebenslauf
//
//  Created by Kasi Weichenberger on 20.08.24.
//

import SwiftUI


struct BerufView: View {
    // Liste der Berufserfahrungen, die angezeigt werden sollen
    var experiences: [Experience]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Überschrift für den Abschnitt der Berufserfahrungen
            Text("Beruflicher Werdegang")
                .font(.headline)
                .foregroundColor(.black)
                .padding(.bottom, 10)
        
            // Trennlinie zur visuellen Abgrenzung
            Divider()
            
            // Dynamische Erstellung der Berufserfahrungen
            ForEach(experiences, id: \.title) { experience in
                // Jeder Berufserfahrungsblock als Rechteck darstellen
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 362, height: 76)
                    .background(Color(red: 0.78, green: 0.67, blue: 0.67))
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    .overlay(
                        // Inhalt des Rechtecks mit Berufserfahrungsdetails
                        VStack(alignment: .leading, spacing: 5) {
                           
                            Text(experience.title)
                                .font(.subheadline)
                                .bold()
                            // Zeitraum und Standort der Berufserfahrung
                            Text("\(experience.fromYear) - \(experience.toYear) | \(experience.location)")
                                .font(.footnote)
                                .foregroundColor(.black)
                        }
                        .padding() // Abstand innerhalb des Rechtecks hinzufügen
                    )
            }
        }
        .padding() // Abstand um den gesamten VStack hinzufügen
    }
}

#Preview {
    BerufView(experiences: [
        Experience(title: "Maler u. Lackierer", location: "Malermeisterbetrieb Dörfer", fromYear: "2018", toYear: "2022"),
        Experience(title: "Maler u. Lackierer", location: "Selbstständig (2 Mitarbeiter)", fromYear: "2014", toYear: "2018")
    ])
}
