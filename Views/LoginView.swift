import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var viewModel: AuthViewModel

    var body: some View {
        VStack {
            Text("CarkApp")
                .font(.largeTitle)
                .padding()
            Button(action: {
                viewModel.signInWithGoogle()
            }) {
                Text("Sign in with Google")
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(AuthViewModel())
    }
}
