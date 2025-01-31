//
//  ContactModel.swift
//  03-01-Lebenslauf
//
//  Created by Kasi Weichenberger on 20.08.24.
//

import SwiftUI

// Modell für ein Kontaktitem, das Informationen wie Icon, Label, Wert und Typ enthält
struct ContactItemModel {
    var iconName: String
    var label: String
    var value: String
    var isLink: Bool = false
    var isEmail: Bool = false
    var isPhone: Bool = false
}

// Wiederverwendbare Ansicht für die Darstellung eines Kontaktitems
struct ContactItem: View {
    var item: ContactItemModel
    
    var body: some View {
        HStack {
            // Anzeige des Icons für das Kontaktitem
            Image(systemName: item.iconName)
                .foregroundColor(.white)
                .frame(width: 24, height: 24)
            
            // Anzeige der Beschriftung des Kontaktitems
            Text(item.label)
                .font(Font.custom("Lato-Bold", size: 16))
                .fontWeight(.bold)
            
            // Überprüfen, ob der Wert ein Link, eine E-Mail oder eine Telefonnummer ist
            if item.isLink, let url = URL(string: item.value) {
                // Wenn es ein Link ist, wird ein klickbarer Link angezeigt
                Link(item.value, destination: url)
                    .font(Font.custom("Lato-Regular", size: 16))
                    .lineLimit(nil)
                    .truncationMode(.tail)
                    .foregroundColor(Color(red: 0.65, green: 0.19, blue: 0.19))
            } else if item.isEmail, let emailUrl = URL(string: "mailto:\(item.value)") {
                // Wenn es eine E-Mail-Adresse ist, wird ein klickbarer E-Mail-Link angezeigt
                Link(item.value, destination: emailUrl)
                    .font(Font.custom("Lato-Regular", size: 16))
                    .lineLimit(nil)
                    .truncationMode(.tail)
                    .foregroundColor(Color(red: 0.65, green: 0.19, blue: 0.19))
            } else if item.isPhone, let phoneUrl = URL(string: "tel:\(item.value)") {
                // Wenn es eine Telefonnummer ist, wird ein klickbarer Telefon-Link angezeigt
                Link(item.value, destination: phoneUrl)
                    .font(Font.custom("Lato-Regular", size: 16))
                    .lineLimit(nil)
                    .truncationMode(.tail)
                    .foregroundColor(Color(red: 0.65, green: 0.19, blue: 0.19))
            } else {
                // Wenn der Wert kein Link, keine E-Mail-Adresse oder Telefonnummer ist, wird er als normaler Text angezeigt
                Text(item.value)
                    .font(Font.custom("Lato-Regular", size: 16))
                    .lineLimit(nil)
                    .truncationMode(.tail)
            }
        }
        .padding()
        Divider()
            .cornerRadius(10) 
    }
}
