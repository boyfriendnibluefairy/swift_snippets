//
// This code demonstrates how to align
// child elements
//

import SwiftUI

struct AlignmentGuideView: View {
    var body: some View {
        // alignment values:
        //    .leading; .center; .trailing
        /*VStack(alignment: .trailing) {
            Text("First Text").font(.title)
            Text("This is the second text").font(.title)
            Text("3rd text").font(.title)
        } */
        
        // alignment values
        //    .center; .top; .bottom
        //    .lastTextBaseline; .firstTextBaseline
        /*HStack(alignment: .firstTextBaseline, spacing: 30) {
            Text("This is the first text for this example").font(.largeTitle)
            Text("This is the second text. Lorem ipsum").font(.body)
            Text("3rd text").font(.headline)
        }.padding()
         */
        
        VStack(alignment: .leading){
            Rectangle()
                .foregroundColor(Color.red)
                .frame(width: 130, height:60)
            // align this rectangle 1/3rd away
            // from the leading edge
            Rectangle()
                .foregroundColor(Color.green)
                .alignmentGuide(.leading, computeValue: {d in d.width/3})
                .frame(width: 230, height:60)
            Rectangle()
                .foregroundColor(Color.blue)
                .frame(width: 190, height:60)
        }
    }
}

struct AlignmentGuideView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuideView()
    }
}
