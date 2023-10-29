//
// This code demonstrates how to implement
// custom alignment
//

import SwiftUI

struct CustomAlignmentView: View {
    var body: some View {
        HStack(alignment: .oneThird) {
            Rectangle()
                .foregroundColor(Color.green)
                .frame(width:60, height:290)
            Rectangle()
                .foregroundColor(Color.red)
                .frame(width:60, height:290)
            Rectangle()
                .foregroundColor(Color.blue)
                .frame(width:60, height:290)
                .alignmentGuide(.oneThird, computeValue: {d in d[VerticalAlignment.top]})
            Rectangle()
                .foregroundColor(Color.orange)
                .frame(width:60, height:290)
        }
    }
}

extension VerticalAlignment {
    private enum OneThird : AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d.height/3
        }
    }
    static let oneThird = VerticalAlignment(OneThird.self)
}

struct CustomAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlignmentView()
    }
}
