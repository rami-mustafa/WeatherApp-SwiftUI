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
                
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
