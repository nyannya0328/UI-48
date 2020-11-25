//
//  ContentView.swift
//  UI-48
//
//  Created by にゃんにゃん丸 on 2020/11/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var txt = ""
    var color = Color(#colorLiteral(red: 0.4868364726, green: 0.7655179795, blue: 0.8371414812, alpha: 1))
    var color1 = Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [color, color1]), startPoint: .leading, endPoint: .trailing)
                
            
            
            SearchView(txt: $txt, data: data)
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SearchView : View {
    @Binding var txt : String
    var data : [String]
    var body: some View{
        
        VStack{
            
            
            ZStack{
                
                HStack{
                    
                    
                    TextField("Search", text: $txt)
                    
                }
                .padding()
                .background(Color.white.opacity(0.5))
                
                
                if self.txt != ""{
                    
                    Button(action: {
                        
                        self.txt = ""
                    }){
                        
                        Spacer(minLength: 0)
                        
                        
                        Text("Cancel")
                            .font(.callout)
                            .foregroundColor(.green)
                        
                    }
                    .padding()
                    
                    
                }
                
                
                
                
                
                
                
            }
            
            
            if self.txt != ""{
                
                List(self.data.filter{ $0.lowercased().contains(self.txt.lowercased())},id: \.self){i in
                    
                    Text(i)
                }
                .frame(height: 500)
                
                
            }
            
            
            
            Spacer(minLength: 0)
        }
        
    }
}
