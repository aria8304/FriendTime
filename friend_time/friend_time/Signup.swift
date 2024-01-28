import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @Binding var isshowing:Bool
    var body: some View {
        NavigationView {
            ZStack {
                
                VStack {
                    TextField("Username", text: $username)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding([.leading, .trailing])
                        .font(.system(size: 16))
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding([.leading, .trailing])
                        .font(.system(size: 16))
                    
                    Spacer()
                    
                    NavigationLink(destination: {main_view()}) {
                        Text("Continue")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(.system(size: 18, weight: .bold))
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                    .padding([.leading, .trailing, .bottom])
                }
                .navigationBarTitle("Login")
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isshowing: .constant(true))
    }
}

