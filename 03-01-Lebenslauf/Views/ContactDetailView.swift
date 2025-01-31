//
//  ContactDetailView.swift
//  03-01-Lebenslauf
//
//  Created by Kasi Weichenberger on 20.08.24.
//
import SwiftUI

struct ContactDetailView: View {
    
    // Eine Liste von Kontaktinformationen, die jeweils ein Symbol, eine Bezeichnung und einen Wert enthalten.
    // Die Variablen isPhone, isEmail und isLink geben an, ob spezielle Handlungen wie Anrufe oder das Öffnen von Links unterstützt werden.
    let contactItems: [ContactItemModel] = [
        ContactItemModel(iconName: "person.fill", label: "Name:", value: "Michael Weichenberger"),
        ContactItemModel(iconName: "house.fill", label: "Adresse:", value: "Augsburgerstraße 41 a, 86462 Langweid am Lech"),
        ContactItemModel(iconName: "phone.fill", label: "Telefon:", value: "+49 151 29049503", isPhone: true),
        ContactItemModel(iconName: "envelope.fill", label: "E-Mail:", value: "mhdweichenberger@gmail.com", isEmail: true),
        ContactItemModel(iconName: "link.circle.fill", label: "LinkedIn:", value: "https://www.linkedin.com/in/michael-weichenberger-50b0b0291/", isLink: true),
        ContactItemModel(iconName: "safari.fill", label: "GitHub:", value: "https://github.com/Michael-Weichenberger", isLink: true)
    ]
    
    var body: some View {
        ZStack {
            // Hintergrundfarbe in einem Elfenbeinton, die über die gesamte Ansicht hinweggeht
            Color(red: 1.0, green: 1.0, blue: 0.941)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 20) {
                // Überschrift für die Kontaktinformationen, mit benutzerdefinierter Schriftart und einer zusätzlichen unteren Einrückung
                Text("Hier sind die Kontaktdetails:")
                    .font(Font.custom("Lato-Bold", size: 24))
                    .padding(.bottom, 20)
                
                // Iteriert über die Kontaktitems und stellt für jedes Item die entsprechende Ansicht dar
                ForEach(contactItems, id: \.label) { item in
                    ContactItem(item: item)
                }
            }
            // Setzt den Hintergrund für den Text und die Kontaktinformationen in einem sanften Beige-Ton
            // Außerdem wird ein abgerundetes Eckendesign und ein Schatteneffekt angewendet
            .padding()
            .background(Color(red: 0.78, green: 0.67, blue: 0.67))
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding()
            .foregroundColor(.black)
        }
        // Setzt den Titel der Navigation
        .navigationTitle("Kontaktdetails")
    }
}

#Preview {
    ContactDetailView()
}
