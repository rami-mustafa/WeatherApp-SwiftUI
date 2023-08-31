

import SwiftUI
import BottomSheet


//enum BottomSheetPosition: CGFloat, CaseIterable {
//    case top = 0.83 // 702/844
//    case middle = 0.385 // 325/844
//    case relative = 0.4
//}


struct HomeView: View {
    
    @State var bottomSheetPosition: BottomSheetPosition = .relative(0.4)
    @State var searchText: String = ""
    
    var body: some View {
        
        NavigationView {
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
                        
                        Text(attributedString)
                        
                        Text("H:24  L: 21")
                            .font(.title3.weight(.semibold))
                        
                    }
                    Spacer()
                }
                .padding(.top , 51)
                
                // MARK: Bottom Sheet
                .bottomSheet(bottomSheetPosition: self.$bottomSheetPosition,
                             switchablePositions: [
                                .relativeBottom(0.125),
                                //                    .relative(0.4),
                                .relativeTop(0.83)
                                
                             ]
                ){
                    //The list of nouns that will be filtered by the searchText.
                    ForecastView()
                    
                }
                .customAnimation(.linear.speed(0.4))
                .backgroundBlur(radius: 25, opaque: true)
                .background(Color.bottomSheetBackground)
                
            

                
                
                
                
                // MARK: Tab Bar
                TabBar(action: {})
            }
            .navigationBarHidden(true)
            
        }
        
        
    }
    
    private var attributedString: AttributedString {
        var string = AttributedString("19°" + "\n " + "Mostly Clear")
        
        if let temp = string.range(of: "19°") {
            string[temp].font = .system(size: 96, weight: .thin)
            string[temp].foregroundColor = .primary
        }
        
        if let pipe = string.range(of: " | "){
            string[pipe].font = .title3.weight(.semibold)
            string[pipe].foregroundColor = .secondary
        }
        
        
        if let weather = string.range(of: "Mostly Clear"){
            string[weather].font = .title3.weight(.semibold)
            string[weather].foregroundColor = .secondary
        }
        return string
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}



