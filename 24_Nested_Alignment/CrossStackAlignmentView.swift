//
// This code demonstrates how to perform alignment
// when mulitple stacks are nested
//

import SwiftUI

struct CrossStackAlignmentView: View {
    var body: some View {
        HStack(alignment: .crossAlignment, spacing:30) {
            Circle()
                .foregroundColor(Color.purple)
                .frame(width:190, height:190)
                .alignmentGuide(.crossAlignment,
                             computeValue: { d in d[VerticalAlignment.center] })
            VStack {
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width:190, height:190)
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width:190, height:190)
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(width:190, height:190)
                    .alignmentGuide(.crossAlignment,
                                 computeValue: { d in d[VerticalAlignment.center] })
                Rectangle()
                    .foregroundColor(Color.orange)
                    .frame(width:190, height:190)
            }
        }
    }
}

extension VerticalAlignment {
    private enum CrossAlignment : AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d[.bottom]
        }
    }
    static let crossAlignment = VerticalAlignment(CrossAlignment.self)
}

struct CrossStackAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        CrossStackAlignmentView()
    }
}
