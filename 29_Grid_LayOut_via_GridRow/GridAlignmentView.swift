//
// This example shows how to adjust alignment
// and spacing in grid layout
//

import SwiftUI

struct GridAlignmentView: View {
    var body: some View {
        
        // // adjust grid spacing
        //Grid(horizontalSpacing:16, verticalSpacing:3) {
        // adjust alignment
        ScrollView {
            Grid(alignment:.topLeading) {
                GridRow {
                    ForEach(1...5, id:\.self){ index in
                        CellContent(cellIndex:index, cellColor:.blue)}
                }
                GridRow(alignment:.bottom) {
                    CellContent(cellIndex:0, cellColor:.orange)
                    Image(systemName:"heart.square")
                    Image(systemName:"heart.square")
                    Image(systemName:"heart.square")
                    CellContent(cellIndex:0, cellColor:.orange)
                }.font(.largeTitle)
                GridRow {
                    CellContent(cellIndex:0, cellColor:.orange)
                    // changing horizontal alignment
                    // changes all cells in one column!!!
                    Image(systemName:"heart.square")
                        .gridColumnAlignment(.trailing)
                    Image(systemName:"heart.square")
                    Image(systemName:"heart.square")
                    CellContent(cellIndex:0, cellColor:.orange)
                }.font(.largeTitle)
                GridRow {
                    CellContent(cellIndex:0, cellColor:.orange)
                    // override alignment for individual
                    // cell
                    Image(systemName:"heart.square")
                        .gridCellAnchor(.bottomLeading)
                    Image(systemName:"heart.square")
                        .gridCellAnchor(.center)
                    Image(systemName:"heart.square")
                        .gridCellAnchor(.topTrailing)
                    CellContent(cellIndex:0, cellColor:.orange)
                }.font(.largeTitle)
                GridRow {
                    ForEach(6...10, id:\.self){ index in
                        CellContent(cellIndex:index, cellColor:.blue)}
                }
                GridRow {
                    ForEach(11...15, id:\.self){ index in
                        CellContent(cellIndex:index, cellColor:.blue)}
                }
                GridRow {
                    ForEach(16...20, id:\.self){ index in
                        CellContent(cellIndex:index, cellColor:.blue)}
                }
                GridRow {
                    ForEach(21...25, id:\.self){ index in
                        CellContent(cellIndex:index, cellColor:.blue)}
                }
                GridRow {
                    ForEach(26...30, id:\.self){ index in
                        CellContent(cellIndex:index, cellColor:.blue)}
                }
            }.padding()
        }
    }
}

/*
 In SwiftUI, once a struct or class is declared in another .swift file, it is visible by other files within the same project.
*/
/*
struct CellContent : View {
    var cellIndex: Int
    var cellColor: Color
    
    var body : some View {
        Text("\(cellIndex)")
            .frame(minWidth: 60, maxWidth:.infinity, minHeight: 99)
            .background(cellColor)
            .cornerRadius(9)
            .font(.system(.largeTitle))
    }
}
 */

#Preview {
    GridAlignmentView()
}
