import Foundation
import Firebase

final class FirebaseManager {
    static let shared = FirebaseManager()
    private init() {
        FirebaseApp.configure()
        self.firestore = Firestore.firestore()
    }

    let firestore: Firestore
}
