

import SwiftUI

struct SegmentedControl: View {
    var body: some View {
        VStack(spacing: 5) {
            
            //MARK: Segmented Buttons
            HStack {
                Spacer()

                Button {
                    
                } label: {
                    Text("Hourly Forecast")
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Weekly Forecast")
                }
                
                Spacer()

            }
            .font(.subheadline.weight(.semibold))
            .foregroundColor(.secondary)
        }
        .padding(.top , 25)
    }
}

struct SegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl()
    }
}
