//
//  ContentView.swift
//  about me
//
//  Created by Scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var textTitle = "Fun Fact"
   
    var body: some View {
        ZStack{
            Color(.systemBrown)
                .ignoresSafeArea()
            
            VStack {
                Text("Suha")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Monir")
                    .font(.headline)
                    .fontWeight(.light)
                Image("books")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding([.leading, .bottom, .trailing], 50.0)
                HStack (spacing: 20){
                    Text(textTitle)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 25.0)
                    
                    
                    
                }
                
                Button("reveal fact") {
                    textTitle = "My favorite book is Her Body and Other Parties by Carmen Machado"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.green)
                
            }
            
            .padding()
            .background(Rectangle()
                .foregroundColor(.teal))
            .cornerRadius(15)
            .shadow(radius: 10)
            .padding()
        }
        }

    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
