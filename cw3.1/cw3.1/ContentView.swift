//
//  ContentView.swift
//  cw3.1
//
//  Created by Bandari Aldehani on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var textinput = ""
    @State var score = ""
    var body: some View {
        ZStack{
            Color.cyan
            VStack{
                
                Text("حاسبه الدرجات")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .bold()
                    .padding(30)
                Spacer()
                
                    
                Image("calculator").resizable().scaledToFit()
                    .frame(width: 100, height: 100)
                Spacer()
                TextField("ادخل درجتك",text: $textinput)
                    .padding()
                    .textFieldStyle(
                        RoundedBorderTextFieldStyle()
                
                    )
                Text("احسب درجتي ")
                    .font(.title)
                    
                    .foregroundColor(Color.black)
                    .background(Color.pink.frame(width: 200, height: 50).cornerRadius(90))
                    .padding()
                    
                    
                    
                    .onTapGesture {
                        if Int(textinput)! >= 90{
                            
                            score = "ممتاز"
                            
                             
                             
                        }
                        else if Int(textinput)! < 90 && Int(textinput)! >= 79 {
                            score = "جيد جدا"
                            
                        }
                        else if Int(textinput)! < 79 && Int(textinput)! >= 69{
                            score = "جيد"
                            
                        }
                        else {
                            score = "مقبول"
                        }
                        }
                        Text("لقد حصلت على درجه")
                        .bold()
                        .font(.system(size: 19))
                        Spacer()
                
                        Text ("  \(score) ")
                        .bold()
                        .font(.system(size: 60))
                        .frame(width: 200, height: 250)
                
                
                
                
                
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
