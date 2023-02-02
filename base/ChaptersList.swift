//
//  ChaptersList.swift
//  base
//
//  Created by user229277 on 1/28/23.
//

import SwiftUI

struct ChaptersList: View {
    @State var showIntersitialAd: Bool = false
    init() {
        //UITableView.appearance().separatorStyle = .none
        //UITableViewCell.appearance().backgroundColor = .green
        //UITableView.appearance().backgroundColor = .green
    }
    
    var body: some View{
        VStack{
            Text("CII R04 Pensions & Retirement Planning")
                .font(.title3)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            NavigationView {
                List{
                    
                    
                    
                    ForEach(chapters) { chapter in
                        
                        ZStack(alignment: .leading) {
                            Button("") {self.showIntersitialAd.toggle()}
                            
                            NavigationLink(destination:
                                            StartTestView(chapter: chapter.title)
                                           
                            )
                            {
                                Text(chapter.title)
                                    .font(.title3)
                                    .foregroundColor(.black)
                                    .padding(6)
                                //.scaledToFit()
                                //.offset(y: 5)
                                    .frame(minWidth: 0, maxWidth: .infinity,  alignment: .leading
                                    )
                                
                                
                            }.background(Color(hex: "bad859"))
                                .cornerRadius(10)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                .listRowInsets(EdgeInsets())
                                .background(Color(UIColor.systemBackground))
                        
                    }.padding(5)
                    
                    Spacer()
                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarTitle("Menu", displayMode: .inline)
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                .listStyle(PlainListStyle())
                //.listStyle(SidebarListStyle())
                //.navigationBarHidden(false)
                //.navigationBarBackButtonHidden(true)
                //.hiddenNavigationBarStyle()
                //.padding()
                //.background(Color.green)
                //remove the default Navigation Bar space:
                //.hiddenNavigationBarStyle()
                
            }
            .presentInterstitialAd(isPresented: $showIntersitialAd,  adUnitId: "ca-app-pub-3940256099942544/4411468910")
            
        }
    }
}
/*
struct ChaptersList: View {
    @State var showIntersitialAd: Bool = false
    init() {
        //UITableView.appearance().separatorStyle = .none
           //UITableViewCell.appearance().backgroundColor = .green
           //UITableView.appearance().backgroundColor = .green
    }
    
    var body: some View{
        
        VStack{
            Text("CII R04 Pensions & Retirement Planning")
                .font(.title3)
                .fontWeight(.semibold)
                
            NavigationView {
                List(chapters) { chapter in
                    ZStack {
                        Button("") {self.showIntersitialAd.toggle()}
                        
                        NavigationLink(destination:
                                        StartTestView(chapter: chapter.title)
                                       
                        )
                        {
                            Text(chapter.title)
                                .font(.title3)
                                .foregroundColor(.black)
                                .padding(6)
                            
                        }
                        
                    }.background(Color(hex: "bad859"))
                        .cornerRadius(10)
                        .hideListRowSeparator()
                    //.listRowBackground(Color.green)
                    
                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarTitle("Menu", displayMode: .inline)
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            }
            ///.statusBar(hidden: true)
            //.statusBarHidden()
            
            Spacer()
        }
        .presentInterstitialAd(isPresented: $showIntersitialAd,  adUnitId: "ca-app-pub-3940256099942544/4411468910")
    }
}
*/
struct ChaptersList_Previews: PreviewProvider {
    static var previews: some View {
        ChaptersList()
    }
}
