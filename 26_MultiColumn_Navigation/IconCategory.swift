//
// This struct is for declaring
// category names and their icons
//

import Foundation

struct IconCategory: Identifiable, Hashable {
    let id = UUID()
    var categoryName: String
    var images: [String]
}
