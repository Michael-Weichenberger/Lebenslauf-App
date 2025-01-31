//
//  AboutMe.swift
//  03-01-Lebenslauf
//
//  Created by Kasi Weichenberger on 21.08.24.
//

import SwiftUI

struct AboutMeView: View {
    // Dummy Model for preview purposes
    var model = HeaderModel(name: "Michael Weichenberger", jobTitle: "Junior App Developer", profileImageName: "bewerbungsfoto")
    
    var body: some View {
        ZStack {
            // Hintergrundfarbe auf den gesamten Bildschirm anwenden
            Color(red: 0.78, green: 0.67, blue: 0.67)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Nach 12 Jahren Erfahrung im Malerhandwerk (2010-2022), davon 3 Jahre als selbstständiger Unternehmer, suche ich nun eine neue Herausforderung in der IT-Branche. Meine Umschulung zum App-Entwickler ermöglicht es mir, meine Führungsqualitäten und mein Organisationstalent in einem zukunftsorientierten Bereich einzubringen.")
                    .font(Font.custom("Lato", size: 16))
                    .foregroundColor(.white)
                    .padding(.horizontal)
                
                // Großer Abstand vor Softskills
                Text("Softskills:")
                    .font(Font.custom("Lato", size: 23).bold())
                    .foregroundColor(.white)
                    .padding(.horizontal)
                
                Text("Teamfähig, Kreativität, Unternehmerisches Denken, Selbstständigkeit und Eigeninitiative, Zielstrebigkeit, Führungskompetenzen, Soziale Kompetenzen, Organisatorische Kompetenzen")
                    .font(Font.custom("Lato", size: 16))
                    .foregroundColor(.white)
                    .padding(.horizontal)
                
                // Bild des Benutzers zentrieren
                HStack {
                    Spacer()
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
                    Spacer()
                }
                .padding(.top, 30)
                
                // Text unter dem Bild
                Text("Wenn Ihnen mein Profil zusagt, können Sie mich gerne über den Kontakt-Button auf der Hauptseite kontaktieren.")
                    .font(Font.custom("Lato", size: 16))
                    .foregroundColor(.white)
                    .padding(.horizontal)
                
                // Signatur
                VStack(alignment: .leading, spacing: 4) {
                    Text("Mit freundlichen Grüßen")
                        .font(Font.custom("Lato", size: 16))
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    
                    Text("Michael Weichenberger")
                        .font(Font.custom("Lato", size: 16))
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .padding(.top, 20) // Abstand zwischen dem letzten Text und der Signatur
                
                Spacer()
            }
            .padding(.top)
        }
        .navigationTitle("Über mich") // Navigationstitel korrekt platzieren
    }
}

#Preview {
    AboutMeView()
}
