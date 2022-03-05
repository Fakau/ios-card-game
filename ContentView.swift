//
//  ContentView.swift
//  war-chalenge
//
//  Created by Kafka Mortomot Laurent on 2022-03-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //VStack = vertical leyout
        //Hstack = horizontal layout
        //ZStack =
        ZStack{
            
            Image("image_backgroung")
                .ignoresSafeArea()
            
            VStack{
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                
                Spacer()
                
                Image("deal_button")
                
                Spacer()
                
                HStack{
                    
                    Spacer()
                    
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.black)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.subheadline)
                            .foregroundColor(Color.black)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.black)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.subheadline)
                            .foregroundColor(Color.black)
                    }
                    
                    Spacer()
                    
                }
                
                Spacer()
                
            }
        
            
        }
      
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
