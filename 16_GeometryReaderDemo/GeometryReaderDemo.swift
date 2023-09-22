//
//  How to adjust child view size based on the containing wrapper
//
import SwiftUI

struct GeometryReaderDemo: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("What's up madlang people mabuhay!")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width/2, height: geometry.size.height/3)
                Text("Time is the Relentless and Cruel Enemy of The Devoted Civil Servant")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width/3, height: geometry.size.height/4)
            }
        }
    }
}

struct GeometryReaderDemo_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderDemo()
            .previewDevice("iPhone SE (2nd generation)")
            .previewDisplayName("iPhone SE")
    }
}

