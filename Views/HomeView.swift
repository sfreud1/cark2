import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var viewModel: AuthViewModel

    var body: some View {
        VStack {
            if let username = viewModel.username {
                Text("Welcome, \(username)!")
                    .font(.title)
                    .padding()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(AuthViewModel())
    }
}
