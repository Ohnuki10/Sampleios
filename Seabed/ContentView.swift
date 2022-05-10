//
//  ContentView.swift
//  Seabed
//
//  Created by cmStudent on 2022/05/08.
//414,814
//.opacity(0.2)薄く

import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var viewModel = SeaParts()
    @State var seatime = 0.6
    
  
   
    
    
    var body: some View {
        GeometryReader { reader in
            
//                        Text("\(viewModel.hour)")
//                        Text(String(viewModel.minute))
//                        Text(String(viewModel.second))
            
   //CGFloat(viewModel.second)
            
            ZStack{
                Image("Sea")
                    .resizable()
                VStack{
                    
                    Text("friends info")
                        .foregroundColor(Color.white)
                    
                    
                    Text("info")
                        .foregroundColor(Color.white)
                            .border(Color.gray.opacity(0.3))
                                .background(Color.black.opacity(0.3))
                   
                        
                   
                HStack{
                    
                    
                    Button(action: {
                       
                    }) {
                        Image("S1")
                            .resizable()
                            .scaledToFit()
                           
                            .frame(width: reader.size.width / 10, height:100)
                           
                    
                    } .offset(y:-CGFloat(viewModel.second))  //buttonImg
                    
                    Button(action: {
                        //ボタン押すと？
                     
                    }) {
                        Image("S1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: reader.size.width / 10, height: 700)
                    }
                    
                    //buttonImg
                    
                    Button(action: {
                        //ボタン押すと？
                    }) {
                        Image("S1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: reader.size.width / 10, height: 80)
//                            .offset(y:350)
                    }   .offset(y:CGFloat(viewModel.second)+90) //buttonImg
                    
                    Button(action: {
                        //ボタン押すと？
                    }) {
                        Image("S1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: reader.size.width / 10, height: 100)
                    } .offset(y:-CGFloat(viewModel.second))
                    
                    Button(action: {
                        //ボタン押すと？
                    }) {
                        Image("S1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: reader.size.width / 10, height: 100)
                    } .offset(y:CGFloat(viewModel.second))  //buttonImg
                    Button(action: {
                        //ボタン押すと？
                    }) {
                        Image("S1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: reader.size.width / 10, height: 100)
                    }  .offset(y:CGFloat(viewModel.second)+150) //buttonImg
                    
                    
                    
                    Button(action: {
                        //ボタン押すと？
                    }) {
                        Image("S1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: reader.size.width / 10, height: 80)
                    }  .offset(y:CGFloat(viewModel.second)) //buttonImg
                    
                    
                    
                    
                    Button(action: {
                        //ボタン押すと？
                    }) {
                        Image("S1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: reader.size.width / 10, height: 80)
                    } .offset(y:-CGFloat(viewModel.second)+80)
                    
                    
                   
                    
                }//HS
                }
//                Image("Sea")
//                    .resizable()
//                   
//                
//                    .opacity(seatime)
//                
                    
                    
                
                
            }//ZS
            
        }//gio
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
