//
//  HomeView.swift
//  WeatherApp
//
//  Created by Ghaiath Alhereh on 03.08.23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ZStack{
            // MARK: Background Color
            Color.background
                .ignoresSafeArea() // To make full screen
            
            // MARK: Background Image
            Image("Background")
                .resizable()
                .ignoresSafeArea() // To make full screen
            
            // MARK: House Image
            Image("House")
                .frame(maxHeight: .infinity , alignment:  .top)
                .padding(.top, 257)

            
            VStack{
                Text("Montreal")
                    .font(.largeTitle)
                
                VStack{
//                    Text("19°")
//                        .font(.system(size: 96 , weight: .thin))
//                        .foregroundColor(.primary)
//                    +
//                    Text("\n")
//                    +
//                    Text("Mostly Clear")
//                        .font(.title3.weight(.semibold))
//                        .foregroundColor(.secondary)
                    
                    Text(attributedString)

                    Text("H:24  L: 21")
                        .font(.title3.weight(.semibold))

                }
                Spacer()
            }
            .padding(.top , 51)
        }
    }
    
    private var attributedString: AttributedString {
        var string = AttributedString("19°" + "\n " + "Mostly Clear")
        
       
        
        return string
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
