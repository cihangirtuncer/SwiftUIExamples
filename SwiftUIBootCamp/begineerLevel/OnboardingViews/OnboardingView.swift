//
//  OnboardingView.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 28.10.2022.
//

import SwiftUI


struct OnboardingView: View {
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender  : String = "Male"

    var body: some View {
        ZStack{
            
            ZStack{
                switch onboardingState {
                case 0:
                   welcomeSection
                        .transition(transition)
                case 1:
                    nameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)

                default:
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(Color.green)
                }
            }
            
            VStack{
                Spacer()
                bottomButton
            }
        }
        
    }
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.cyan)
    }
}

// MARK: Components
extension OnboardingView {
    private var bottomButton: some View {
        Text(
            onboardingState == 0 ?    "Sign in" :
                onboardingState == 3 ?    "FINISH" :
                "NEXT"
        )
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 10)
            .onTapGesture {
                handleNextButtonPressed()
            }
            .padding(30)
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40){
            Spacer()
            Image(systemName: "hand.wave.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(Color.white)
            Text("Hi! Welcome first app")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .overlay(Capsule(
                    style: .continuous)
                    .frame(height: 3)
                    .offset(y:5)
                    .foregroundColor(Color.white),
                         alignment: .bottom
                )
            Spacer()
        }
    }
    

    private var nameSection: some View {
        VStack(spacing: 40){
            Spacer()
            Text("whatis your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
            TextField("Youre name here...", text: $name)
                .font(.headline)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    private var addAgeSection: some View {
        VStack(spacing: 40){
            Spacer()
            Text("whatis your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
            Text("\(String(format: "%.f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
            Slider(value: $age, in: 18...100, step: 1)
                .colorMultiply(Color.white)
                .accentColor(Color.orange)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40){
            Spacer()
            Text("What's your Gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
            Picker("Select a gender", selection: $gender) {
                Text("Male").tag(1)
                    .font(.title)
                    .foregroundColor(Color.white)
                Text("Female").tag(2)
                    .font(.title)
                    .foregroundColor(Color.white)
            }
            .pickerStyle(.inline)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

// MARK: Functions
extension OnboardingView {
    
    func handleNextButtonPressed() {
        withAnimation(.spring()){
            if(onboardingState == 3){
                // sign in
            }else{
                
                onboardingState += 1
            }
            
        }
    }
}
