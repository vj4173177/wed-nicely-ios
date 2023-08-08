//
//  UserOnBoardingScreen.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 16/07/23.
//

import SwiftUI

struct UserOnBoardingScreen: View {
    @State private var currentPage: RegistrationPage = .genderScreen

    @State private var progress :Float=0.5
    @State private var firstNameLastNameScreenVisibility = true

   
    @State private var genderScreenVisibility :Bool=false
    @State private var dOBVisibility :Bool=false
    @State private var ReligionVisibility :Bool=false
    @State private var communityAndReligionVisibility :Bool=false
    @State private var currentlyLiveVisibility :Bool=false
    @State private var heightVisibility :Bool=false
    @State private var occupationVisibility :Bool=false
    @State private var eduucationVisibility :Bool=false
    @State private var interestsVisibility :Bool=false
    var body: some View {
        VStack{
            HStack{
                Image("back_button")
                    .resizable()
                    .frame(width: 30,height: 30).padding(20)
                Spacer()
            }
            ProgressView(value: 0.1)
                .progressViewStyle(CustomProgressViewStyle(activeColor:ColorConstants.Colors.PURPLE_COLOR_Dark, inActiveColor: Color.white)) // Use the custom style with your desired color
                        .frame(height: 20)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
            NavigationView{
                VStack {
                                if currentPage == .firstNameLastNameScreen {
                                    FirstAndLastNameScreen1( currentPage: $currentPage, progress: $progress)
                                } else if currentPage == .genderScreen {
                                    GenderScreen2(currentPage: $currentPage, progress: $progress)
                                } else if currentPage == .dOBScreen {
                                    GenderScreen2(currentPage: $currentPage, progress: $progress)
                                }

                            }
            }
            Spacer()
        }
    }
}

struct UserOnBoardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        UserOnBoardingScreen()
    }
}

func backFuntionality(){
    
}
