import SwiftUI

struct UserInfo: View {
    @State private var name: String = ""
    @State private var bday: String = ""
    @State private var email: String = ""
    @State private var phonenum: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.4627, green: 0.8392, blue: 1.0)
                    .frame(height: 900.0)
                VStack {
                    Spacer() // You may adjust or remove this Spacer
                    
                    TextField("Name", text: $name)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .frame(width: 350.0)
                        .cornerRadius(10)
                        .padding([.leading, .trailing])
                    
                    TextField("Date of Birth", text: $bday)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .frame(width: 350.0)
                        .cornerRadius(10)
                        .padding([.leading, .trailing])
                    
                    TextField("Email", text: $email)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .frame(width: 350.0)
                        .cornerRadius(10)
                        .padding([.leading, .trailing])
                        .keyboardType(.emailAddress)
                    
                    TextField("Phone Number", text: $phonenum)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .frame(width: 350.0)
                        .cornerRadius(10)
                        .padding([.leading, .trailing])
                        .keyboardType(.phonePad)
                    
                    TextField("Username", text: $username)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .frame(width: 350.0)
                        .cornerRadius(10)
                        .padding([.leading, .trailing])
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .frame(width: 350.0)
                        .cornerRadius(10)
                        .padding([.leading, .trailing])

                    // Consider reducing the size of this Spacer or removing it
                    Spacer() // You may adjust or remove this Spacer
                    
                    NavigationLink(destination: {interest()}) {
                        Text("Continue")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(.system(size: 18, weight: .bold))
                            .padding()
                            .foregroundColor(.white)
                            .frame(width: 350.0)
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 100) // Add padding at the bottom if needed
                    
                }
                .navigationBarTitle("")
            }
        }
    }
}

struct UserInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserInfo()
    }
}

