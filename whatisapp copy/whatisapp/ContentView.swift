//
//  ContentView.swift
//  whatisapp
//
//  Created by uchenna obinna on 12/24/22.
//

import SwiftUI

struct ContentView: View {
    @State var users = mockUsers
    let userNames = mockUsers.map{$0.name}
    @State var searchText = ""

    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    TextField("Search...", text: $searchText)
                        .padding(5)
                        .padding(.horizontal, 25)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .overlay(
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 8)

                                if !searchText.isEmpty {
                                    Button(action: {
                                        self.searchText = ""
                                    }) {
                                        Image(systemName: "multiply.circle.fill")
                                            .foregroundColor(.gray)
                                            .padding(.trailing, 8)
                                    }
                                }
                            }
                        )
                        .padding(.horizontal, 10)

                    if !searchText.isEmpty {
                        Button(action: {
                            self.searchText = ""
                        }) {
                            Text("Cancel")
                        }
                        //.padding(.trailing, 10)
                    }
                }
                .padding(.horizontal, 8)
                //.padding(.vertical, 0.0)

                List(users.filter {
                    self.searchText.isEmpty ? true : $0.name.localizedCaseInsensitiveContains(self.searchText)
                }) { index in
                    ImageLabelRow(collection: index)
                }
                if searchText.isEmpty {
                                    HStack {
                                        Button(action: {
                                            // button action
                                        }) {
                                            //Text("Button 1")
                                            Image(systemName: "person.2").fixedSize().foregroundColor(Color.gray).font(.system(size:30).bold())
                                                
                                        }
                                        .padding(.trailing,48)
                                        //Spacer()
                                        Button(action: {
                                            // button action
                                            }) {
                                            //Text("Button 2")
                                                Image(systemName: "circle.slash").fixedSize().foregroundColor(Color.gray).font(.system(size:30).bold())
                                                }
                                            .padding(.trailing,48)
                                        //Spacer()
                                        Button(action: {
                                            // button action
                                            }) {
                                            //Text("Button 3")
                                                Image(systemName: "message.badge.filled.fill").fixedSize().foregroundColor(Color.gray).font(.system(size:30))
                                                }
                                            .padding(.trailing,48)
                                        //Spacer()
                                        Button(action: {
                                            // button action
                                            }) {
                                                Image(systemName: "checkmark.circle").fixedSize().foregroundColor(Color.gray).font(.system(size:30))
                                                                    }
    
                                    }
                                    
                            }
                                                   
            }
            .navigationBarTitle(Text("Add an Admin"), displayMode: .inline)
            .navigationBarHidden(false)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Image("logo").resizable().padding(.trailing,8))
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("Add an Admin").font(.headline)
                            .preferredColorScheme(ColorScheme.dark)
                    }
                }
            }
        }
        .preferredColorScheme(ColorScheme.dark)
        .background(.black)
        .scrollContentBackground(.hidden)
    }
}


    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    struct ImageLabelRow: View {
        
        var collection: User
        
        var body: some View {
            VStack {
                HStack{
                    Image(uiImage: profilePic(pic: collection.photo))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())

                    VStack(alignment: .leading) {
                        Text(collection.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            //.background(Color.black)
                        Text("Last message")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            //.background(.black)
                        
                    }
                    Image(systemName: "ellipsis").padding(.leading, 145)
                   
                }
                                            
                
            }
            
        }
        
    }
    


func profilePic(pic: String) -> UIImage{
    
    guard let image = UIImage(named: pic) else { return UIImage(systemName: "person.crop.circle.badge.plus.fill") ?? UIImage(systemName: "person.crop.circle.badge.plus.fill")! }
    let imagecircle = image.preparingForDisplay()
    return imagecircle!
}

