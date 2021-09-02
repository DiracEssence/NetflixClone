//
//  WhiteButton.swift
//  NetflixClone
//
//  Created by user193760 on 3/13/21.
//

import SwiftUI

struct PlayButton: View {
    var text: String;
    var imageName: String;
    var backgroundColor: Color = Color.white
    var foregroundColor: Color = Color.black
    
    var action: () -> Void;
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                Spacer()
            }
            .padding(.vertical, 6)
            .foregroundColor(foregroundColor)
            .background(backgroundColor)
            .cornerRadius(3.0)
        })
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea(.all)
            
            PlayButton(text: "Play", imageName: "play.fill", backgroundColor: Color(hex: 0xCF0018), foregroundColor: .white) {
                
            }
        }
    }
}
