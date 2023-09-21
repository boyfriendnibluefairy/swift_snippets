//
//  This code demonstrates how to manipulate Stacks
//

import SwiftUI

struct StacksDemoView: View {
    var body: some View {
//        HStack{
//            Image(systemName: "goforward.30")
//                .resizable().scaledToFit()
//                .frame(width:60)
//            Image(systemName: "goforward.60")
//                .resizable().scaledToFit()
//                .frame(width:60)
//            Image(systemName: "goforward.90")
//                .resizable().scaledToFit()
//                .frame(width:60)
//        }
//        VStack {
//            Image(systemName: "goforward.30")
//                .resizable().scaledToFit()
//                .frame(width:60)
//            Image(systemName: "goforward.60")
//                .resizable().scaledToFit()
//                .frame(width:60)
//            Image(systemName: "goforward.90")
//                .resizable().scaledToFit()
//                .frame(width:60)
//        }
        VStack(alignment: .center, spacing: 30) {
            Text("Monetary Records")
                .font(.title)
            HStack(alignment: .top) {
                Text("Year 1 Sales")
                    .font(.headline)
                Spacer()
                VStack(alignment: .leading) {
                    Text("January")
                    Text("February")
                    Text("March")
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("$1000")
                    Text("$3000")
                    Text("$2000")
                }
                .padding(6)
            }
            .padding(6)
            
            // frame modifier demo
            Text("Aegon The Conqueror Targaryen")
                .font(.largeTitle)
                .border(Color.green)
//                .frame(width:100, height:100, alignment:.center)
//                .frame(minWidth:100, maxWidth:300, minHeight:100, maxHeight:300, alignment: .center)
                .frame(minWidth:0, maxWidth:.infinity, minHeight:0, maxHeight:.infinity, alignment: .center)
        }
        .padding(6)
    }
}

struct StacksDemoView_Previews: PreviewProvider {
    static var previews: some View {
        StacksDemoView()
            .previewDevice("iPhone SE (2nd generation)")
            .previewDisplayName("iPhone SE")
    }
}
