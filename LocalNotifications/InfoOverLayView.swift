//
//  InfoOverLayView.swift
//  LocalNotifications
//
//  Created by Tobias Sörensson on 2023-05-01.
//

import SwiftUI

struct InfoOverLayView: View {
    let infoMessage: String
    let buttonTitle: String
    let systemImageName: String
    let action: () -> Void
    
    var body: some View {
        VStack {
            Text(infoMessage)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
            Button {
                action()
            } label: {
                Label(buttonTitle, systemImage: systemImageName)
            }
            .padding()
            .background(Color(.systemGray5))
            .cornerRadius(5)
        }
        .padding()
    }
}

struct InfoOverLayView_Previews: PreviewProvider {
    static var previews: some View {
        InfoOverLayView(infoMessage: "Alert", buttonTitle: "Do something", systemImageName: "alert", action: {})
    }
}
