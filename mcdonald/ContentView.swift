//
//  ContentView.swift
//  mcdonald
//
//  Created by Kekko Paciello on 26/01/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showQR = false
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Image("crispy")
                    .resizable()
                    .scaledToFit()
                Text("Scopri tutte le offerte dedicate ai nostri clienti!")

                
                HStack(spacing: 30){
                    Rectangle()
                        .frame(width: 160, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .overlay(VStack{
                            Image("chips")
                                .resizable()
                                .scaledToFit()
                                .onTapGesture {
                                    showQR = true
                                }
                            Text("Patate Chips")
                                .font(.headline)
                            Text("2$")
                                .font(.largeTitle)
                                .bold()
                        })
                    
                    Rectangle()
                        .frame(width: 160, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .overlay(VStack{
                            Image("cheeseburger")
                                .resizable()
                                .scaledToFit()
                                .onTapGesture {
                                    showQR = true
                                }
                            Text("Cheeseburger")
                                .font(.headline)
                            Text("7$")
                                .font(.largeTitle)
                                .bold()
                        })
                }
                .padding(.top,20)
                
                HStack(spacing: 30){
                    Rectangle()
                        .frame(width: 160, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .overlay(VStack{
                            Image("parmigiano")
                                .resizable()
                                .scaledToFit()
                                .onTapGesture {
                                    showQR = true
                                }
                            Text("Parmigiano")
                                .font(.headline)
                            Text("1$")
                                .font(.largeTitle)
                                .bold()
                        })
                    
                    Rectangle()
                        .frame(width: 160, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .overlay(VStack{
                            Image("mcflurry")
                                .resizable()
                                .scaledToFit()
                                .onTapGesture {
                                    showQR = true
                                }
                            Text("McFlurry")
                                .font(.headline)
                            Text("4$")
                                .font(.largeTitle)
                                .bold()
                        })
                }
                .padding(.top,20)
                
                Spacer()

                
            }
        }
        .sheet(isPresented: $showQR, content: {
            CodiceView()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
