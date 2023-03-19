
import SwiftUI

struct CoverImageModel: Decodable, Identifiable, Encodable {
    let id: Int
    let name: String

    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
}


