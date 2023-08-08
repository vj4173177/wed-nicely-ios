//
//  FirstAndLastNameScreen1.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 19/07/23.
//

import SwiftUI

struct FirstAndLastNameScreen1: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @Binding var currentPage: RegistrationPage
    @Binding var progress: Float

    var body: some View {
        VStack{
       
            HStack{
                Image("person_icon").resizable().frame(width: 60,height: 60)
                Spacer()

            }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
            HStack{
                Text(StringConstants.Strings.what_is_your_full_name).font(.system(size: 24))
                    .bold()
                Spacer()

            }.padding(20)
            CustomTextFieldForFirstNameAndLastName(name: $firstName, hintName:StringConstants.Strings.first_name)
            CustomTextFieldForFirstNameAndLastName(name:$lastName,hintName:StringConstants.Strings.last_name)
             
            HStack{
                Spacer()
                if(!firstName.isEmpty && !lastName.isEmpty){
                    NextButtonActive().onTapGesture {
                        print("gender page screen")
                        progress=0.22
                        currentPage = .genderScreen
                        print(currentPage)
                    }
                }else{
                    NextButtonInActive().onTapGesture {
                        
                    }
                }
            }
            Spacer()
        }
        
        
    }
}

struct FirstAndLastNameScreen1_Previews: PreviewProvider {
    static var previews: some View {
        FirstAndLastNameScreen1(currentPage: Binding.constant(.firstNameLastNameScreen), progress: Binding.constant(0.33)
           
        )
    }
}
