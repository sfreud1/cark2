import SwiftUI

struct UsernameView: View {
    @EnvironmentObject private var viewModel: AuthViewModel
    @State private var username: String = ""

    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Save") {
                viewModel.saveUsername(username)
            }
        }
        .padding()
    }
}

struct UsernameView_Previews: PreviewProvider {
    static var previews: some View {
        UsernameView().environmentObject(AuthViewModel())
    }
}
