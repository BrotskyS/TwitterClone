//
//  ContentView.swift
//  TwitterClone
//
//  Created by Sergiy Pik on 13.03.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        Group{
            if viewModel.userSesion == nil {
                LoginView()
            }else{
                mainInterfaceView 
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    var mainInterfaceView: some View {
        ZStack(alignment: .leading){
            MainTabView()
                .navigationBarHidden(showMenu)
            
            if(showMenu){
                ZStack{
                    Color(.black)
                        .opacity(0.25)
                }
                .onTapGesture {
                    withAnimation(.easeOut){
                        showMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            SideMenuView()
                .frame(width: 300)
                .offset(x: showMenu ? 0 : -300, y:0)
                .background(showMenu ? .white : .clear)
        }
        .navigationBarTitle("Explore")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button{
                    withAnimation(.easeOut){
                        showMenu.toggle()
                    }
                }label: {
                    Circle()
                        .frame(width: 32, height: 32)
                }
            }
        }
        .onAppear{
            showMenu = false
        }
    }
}
