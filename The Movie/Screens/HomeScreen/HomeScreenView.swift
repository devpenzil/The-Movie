//
//  HomeScreenView.swift
//  The Movie
//
//  Created by Ajo Alex on 16/08/24.
//

import SwiftUI

struct HomeScreenView: View {
     let imgUrl = URL(string: "https://images.pexels.com/photos/16628553/pexels-photo-16628553/free-photo-of-young-man-on-a-motorcycle-in-city.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load")
    
    func signIn() -> () {
       print("hello")
    }
    
    struct Animal: Identifiable {
        var id = UUID()
        var name: String
    }
    
    let animals = [
        Animal( id: UUID(), name: "Dog"),
        Animal( id: UUID(), name: "Cat"),
        Animal( id: UUID(), name: "Parrot"),
        Animal( id: UUID(), name: "Parrot"),
        Animal( id: UUID(), name: "Parrot"),
        Animal( id: UUID(), name: "Parrot")
    ]
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                ZStack(alignment: .bottom){
                    AsyncImage(url: imgUrl){ image in
                        image.image?.resizable()
                    }
                    .frame(width: .infinity, height: 500)
                    
                    Rectangle()
                        .fill( LinearGradient(gradient: Gradient(colors: [Color.clear, Color.white]),
                                              startPoint: .top,
                                              endPoint: .bottom))
                        .frame(width: .infinity, height: 300)
                   
                    VStack(){
                        HStack{
                            Spacer()
                            Button(action: signIn){
                                Image(systemName: "plus").accentColor(Color.white)
                                Text("Watchlist").foregroundColor(Color.white).fontWeight(.medium)
                            }.frame(width:160,height: 48).background(Color.gray).cornerRadius(5)
                            Spacer()
                            Button(action: signIn){
                                Text("Details").background(Color.orange).foregroundColor(Color.black).fontWeight(.medium)
                            }.frame(width:160,height: 48).background(Color.orange).cornerRadius(5)
                            Spacer()
                     
                        }
                    }.padding()
                  
                }
                
                VStack {
                    Text("Marvel Studios")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .font(.title)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .firstTextBaseline, spacing: 10) {
                            ForEach(animals) { animal in
                                VStack {
                                    AsyncImage(url: imgUrl){ image in
                                        image.image?.resizable()
                                    }
                                    .frame(width: 120, height: 160).cornerRadius(8)
                                    Text(animal.name).frame(width: 120,alignment: .leading)
                                }
                            }
                        }
                    }.padding(.leading)
                }.padding(.bottom, 30)
                
              
                VStack {
                    Text("Best movies")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .font(.title)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .firstTextBaseline, spacing: 10) {
                            ForEach(animals) { animal in
                                VStack {
                                    AsyncImage(url: imgUrl){ image in
                                        image.image?.resizable()
                                    }
                                    .frame(width: 120, height: 160).cornerRadius(8)
                                    Text(animal.name).frame(width: 120,alignment: .leading)
                                }
                            }
                        }
                    }.padding(.leading)
                }.padding(.bottom, 30)
           
            }
        }
        }
}

#Preview {
    ContentView()
}
