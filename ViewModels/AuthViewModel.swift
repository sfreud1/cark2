import Foundation
import Combine
import Firebase
import GoogleSignIn

final class AuthViewModel: ObservableObject {
    @Published var isLoggedIn: Bool = false
    @Published var username: String? = nil

    private var cancellables = Set<AnyCancellable>()
    private let manager = FirebaseManager.shared

    func signInWithGoogle() {
        // Placeholder for Google Sign-In flow
        // After successful sign-in, set isLoggedIn = true and fetch username
    }

    func saveUsername(_ username: String) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let data = [
            "uid": uid,
            "username": username
        ]
        manager.firestore.collection("users").document(uid).setData(data) { [weak self] error in
            if error == nil {
                DispatchQueue.main.async {
                    self?.username = username
                }
            }
        }
    }
}
