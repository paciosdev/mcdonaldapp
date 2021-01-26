//
//  CodiceView.swift
//  mcdonald
//
//  Created by Kekko Paciello on 26/01/21.
//

import SwiftUI

struct CodiceView: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack(spacing: 30){
                Text("QR GENERATED:")
                    .font(.largeTitle)
                    .bold()
                Image("qr")
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}

struct CodiceView_Previews: PreviewProvider {
    static var previews: some View {
        CodiceView()
    }
}
