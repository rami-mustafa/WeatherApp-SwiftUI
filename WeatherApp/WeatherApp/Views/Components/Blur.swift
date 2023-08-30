

import SwiftUI

class UIBackropView: UIView{
    override class var layerClass: AnyClass{
        NSClassFromString("CABBackropLayer") ?? CALayer.self
    }
}


struct Backrop: UIViewRepresentable {
    func makeUIView(context: Context) -> UIBackropView {
        UIBackropView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
    
}



struct Blur: View {
    
    var radius: CGFloat = 3
    var opaque: Bool = false
    
    var body: some View {
        
        Backrop()
            .blur(radius: radius , opaque: opaque)
    }
}

struct Blur_Previews: PreviewProvider {
    static var previews: some View {
        Blur()
    }
}
