//
//  ContentView.swift
//  war-chalenge
//
//  Created by Kafka Mortomot Laurent on 2022-03-05.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var playerCard = "card3"
    @State var computerCard = "card2"
    @State var playerScore = 0;
    @State var computerScore = 0;
    
    var body: some View {
        
        //VStack = vertical leyout
        //Hstack = horizontal layout
        //ZStack =
        
        // String  => "Hello"
        // var myVar:String = "Hello"
        // var myVar = "Hello"
        
        // Int  => 100
        // var myVar:Int = 100
        // var myVar = 100
        
        // Double  => 100
        // var myVar:Double = 100.00
        // var myVar = 100.00
        
        //Constant
        // let myConst:String = "Hello"
        
        //function
        /*
             func myFunction(){
                 let a = 7;
                 let b = 9
                 print(a = + b)
             
             }
         
             unc myFunction(a: Int, b:Int) -> Int{
                 return a+b
             }
         
             argument label
             func myFunction(FirstNumber a: Int, SecondNumber b:Int) -> Int{
                 return a+b
             }
         
             func myFunction(_ a: Int, _ b:Int) -> Int{
                 return a+b
             }
         
         */
        
        //Structure
        /*
             struct myStruct{
               //variable and constants
               //function
             
             }
         
         */
        
        //button instance with closure
        /*
         Button("click me", action:{
            print("click me")
         })
         */
        
        //button instance with trailing closure
        /*
         Button("click me"){
            print("click me")
         })
         */

        

        
        ZStack{
            
            Image("background")
                .ignoresSafeArea()
            
            VStack{
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(computerCard)
                    Spacer()
                }
                
                Spacer()
     
                Button (action: {
                    let playerRand = Int.random(in: 2...14)
                    let computerRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    computerCard = "card" +  String(computerRand)
                    
                    if playerRand > computerRand {
                        playerScore += 1
                    } else {
                        computerScore += 1
                    }
                },  label:  {
                    Image("dealbutton")
                })

                
                Spacer()
                
                HStack{
                    
                    Spacer()
                    
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("Computer")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(computerScore))
                            .font(.subheadline)
                            .foregroundColor(Color.white)
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

