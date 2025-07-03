import SwiftUI

@main
struct CarkAppApp: App {
    @StateObject private var authViewModel = AuthViewModel()

    var body: some Scene {
        WindowGroup {
            if authViewModel.isLoggedIn {
                if authViewModel.username == nil {
                    UsernameView()
                        .environmentObject(authViewModel)
                } else {
                    HomeView()
                        .environmentObject(authViewModel)
                }
            } else {
                LoginView()
                    .environmentObject(authViewModel)
            }
        }
    }
}
