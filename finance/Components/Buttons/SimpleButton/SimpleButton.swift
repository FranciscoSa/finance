//
//  SimpleButton.swift
//  finance
//
//  Created by Francisco Santana Cardoso on 11/01/23.
//

import Foundation
import SwiftUI

struct SimpleButton: View {
    
    var body: some View {
        newButton(label: "Bola") {
            print ("casa")
        }
    }
    
}

extension SimpleButton {
    func newButton(label: String, completion: @escaping () -> Void) -> some View {
        var button: some View {
            Button {
                completion()
            } label: {
                Text(label)
                    .bold()
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 150)
                    .frame(height: 50)
            }
            .background(Color.blue)
            .buttonStyle(.borderless)
            .cornerRadius(27)
        }
      return button
    }
}

struct SimpleButton_Preview: PreviewProvider {
    static var previews: some View {
        SimpleButton()
    }
}
