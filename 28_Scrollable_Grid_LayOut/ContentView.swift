//
// This example uses LazyVGrid
// to create grid layout.
// When using LazyHGrid, the fixed, minimum and maximum values
// now refer to row height instead of column views.
// Also for LazyHGrid, you must now use ScrollView(.horizontal)
//

import SwiftUI

struct ContentView: View {
    
    private var solomonColors: [Color] = [ .yellow, .green, .blue ]
    /*
    private var gridItems = [ GridItem(),
                              GridItem(),
                              GridItem(),
                              GridItem()]
     */
    // change gridItems to adaptive grid layout
    /*
    private var gridItems = [ GridItem(.adaptive(minimum: 60))]
     */
    // fixing the size of some column
    private var gridItems = [ GridItem(),
                              GridItem(.fixed(60)),
                              GridItem(),
                              GridItem(.adaptive(minimum:120))]
    
    struct CellContent: View {
        var index: Int
        var color: Color
        
        var body: some View {
            Text("\(index)")
                .frame(minWidth:60, maxWidth:.infinity, minHeight:99)
                .background(color)
                .cornerRadius(9)
                .font(.system(.largeTitle))
        }
    }
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: gridItems, spacing:3){
                ForEach((0...99), id:\.self){ index in
                    CellContent(index:index, color:solomonColors[index % solomonColors.count])
                }
            }.padding()
        }
        
    }
}

#Preview {
    ContentView()
}
