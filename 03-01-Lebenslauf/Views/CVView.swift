//
//  CVView.swift
//  03-01-Lebenslauf
//
//  Created by Kasi Weichenberger on 20.08.24.
//

import SwiftUI

struct CVView: View {
    
    // Modell für die Kopfzeile, das den Namen, den Jobtitel und das Profilbild enthält
    var headerModel = HeaderModel(
        name: "Michael Weichenberger",
        jobTitle: "Junior App Developer",
        profileImageName: "bewerbungsfoto"
    )
    
    // Liste von Berufserfahrungen, die in der Ansicht angezeigt werden
    var experiences: [Experience] = [
        Experience(title: "Maler u. Lackierer ", location: "Malermeisterbetrieb Dörfer", fromYear: "2018", toYear: "2022"),
        Experience(title: "Maler u. Lackierer", location: "Selbstständig (2 Mitarbeiter)", fromYear: "2014", toYear: "2018")
    ]
    
    // Liste von Bildungsabschlüssen, die in der Ansicht angezeigt werden
    var educations: [Education] = [
        Education(name: "Umschulung App Development", school: "Syntax Institut", fromYear: "2023", toYear: "2024"),
        Education(name: "Qualifizierter Hauptschulabschluss", school: "Kapellenschule Augsburg", fromYear: "1997", toYear: "2007")
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                // Hintergrundfarbe der gesamten Ansicht (sehr helles Gelb)
                Color(red: 1.0, green: 1.0, blue: 0.941)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack {
                        
                        // Einfügen der Kopfzeilenansicht (mit dem HeaderModel)
                        HeaderView(model: headerModel)
                        
                        // Navigationslink zur "Über mich"-Seite
                        NavigationLink(destination: AboutMeView()) {
                            Text("Über mich")
                                .font(.headline)
                                .foregroundColor(Color(red: 0.65, green: 0.19, blue: 0.19))
                                .frame(width: 340)
                        }
                        
                        // Einfügen der Kontakt- und Fähigkeitsansichten
                        ContactView()
                        SkillsView()
                        
                        // Filterung und Anzeige von Berufserfahrungen, die den Titel "Maler u. Lackierer" enthalten
                        BerufView(experiences: experiences.filter { $0.title.contains("Maler u. Lackierer") })
                    
                        // Anzeige der Bildungslaufbahn
                        SchuleView(educations: educations)
                        
                        // Navigationslink zur Kontakt-Detailseite
                        NavigationLink(destination: ContactDetailView()) {
                            Text("Kontakt")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 340)
                                .background(Color(red: 0.65, green: 0.19, blue: 0.19))
                                .cornerRadius(10)
                        }
                        .padding(.top, 20)
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    CVView()
}
