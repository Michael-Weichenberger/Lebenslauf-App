//
//  SchuleView.swift
//  03-01-Lebenslauf
//
//  Created by Kasi Weichenberger on 20.08.24.
//

import SwiftUI

struct SchuleView: View {
    // Liste von Bildungsabschlüssen, die angezeigt werden sollen
    var educations: [Education]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Überschrift für den Abschnitt "Schulischer Abschluss", mit Schriftart und Farbe
            Text("Schulischer Abschluss")
                .font(.headline)
                .foregroundColor(.black)
                .padding(.bottom, 10)
            
            // Trennlinie unter der Überschrift
            Divider()
            
            // Dynamische Erstellung der Bildungsabschlüsse
            ForEach(educations, id: \.name) { education in
                // Hintergrund für jeden Bildungsabschluss, mit abgerundeten Ecken und Schatten
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 362, height: 76)
                    .background(Color(red: 0.78, green: 0.67, blue: 0.67))
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    .overlay(
                        // Inhalt des Rechtecks, mit Text für Bildungsabschlüsse
                        VStack(alignment: .leading, spacing: 5) {
                            // Name der Ausbildung, fettgedruckt
                            Text(education.name)
                                .font(.subheadline)
                                .bold()
                            
                            // Zeitraum und Schule, in kleinerer Schriftart und schwarzer Farbe
                            Text("\(education.fromYear) - \(education.toYear) | \(education.school)")
                                .font(.footnote)
                                .foregroundColor(.black)
                        }
                        .padding()
                    )
            }
        }
        .padding()
    }
}

#Preview {
    SchuleView(educations: [
        Education(name: "Umschulung App Development", school: "Syntax Institut", fromYear: "2023", toYear: "2024"),
        Education(name: "Qualifizierter Hauptschulabschluss", school: "Kapellenschule Augsburg", fromYear: "1996", toYear: "2007")
    ])
}
