//
// Each row is represented by
// GridRow
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Grid {
            GridRow {
                ForEach(1...5, id:\.self){ index in
                    CellContent(cellIndex: index, cellColor: .red)}
            }
            GridRow {
                ForEach(6...7, id:\.self){ index in
                    CellContent(cellIndex: index, cellColor: .green)}
            }
            // not all cells must be contained within GridRow
            CellContent(cellIndex: 11, cellColor:.yellow)
            // add empty cells
            GridRow {
                ForEach(12...16, id:\.self){ index in
                    if(index%2==0){
                        CellContent(cellIndex: index, cellColor:.blue)
                    }else{
                        // gridCellUnsizedAxes make sure that
                        // empty cell conforms to the size of existing
                        // nonempty cells
                        Color.clear
                            .gridCellUnsizedAxes([.horizontal,.vertical])
                    }
                }
            }
            // column spanning
            GridRow {
                CellContent(cellIndex:17, cellColor:.purple)
                    .gridCellColumns(3)
                CellContent(cellIndex:18, cellColor:.purple)
                    .gridCellColumns(2)
            }
            GridRow {
                ForEach(21...25, id:\.self){ index in
                    CellContent(cellIndex:index, cellColor:.orange)}
            }
        }.padding()
    }
}

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

#Preview {
    ContentView()
}
