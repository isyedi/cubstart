//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

struct ContentView: View {
    
    let image = UIImage(systemName: "multiply.circle.fill")
    
    var fruits = [
        
        Items(imageName: "banana", itemName: "Bananas", quantity: "3"),
        Items(imageName: "apple", itemName: "Apple", quantity: "4"),
        Items(imageName: "eggs", itemName: "Eggs", quantity: "12")
    ]
    
    var vegetables = [
        
        Items(imageName: "", itemName: "Broccoli", quantity: "4"),
        Items(imageName: "", itemName: "Lettuce", quantity: "1"),
        Items(imageName: "", itemName: "Carrots", quantity: "3")
    
    ]
    
    var condiments = [
        
        Items(imageName: "", itemName: "Ketchup", quantity: "1"),
        Items(imageName: "", itemName: "Ranch", quantity: "1"),
        Items(imageName: "", itemName: "Mustard", quantity: "1")
    
    ]
    
    
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("Fruit")){
                    ForEach(fruits){
                    i in CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                
                    }
                }
                
                Section(header: Text("Vegetables")){
                    ForEach(vegetables){
                    i in CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                
                    }
                }
                
                Section(header: Text("Condiments")){
                    ForEach(condiments){
                    i in CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                
                    }
                }

                
            }.navigationTitle("Shopping List")
        }
    }
}

class Items : Identifiable{
    
    let itemName : String
    let imageName : String
    let quantity : String
    
    init(imageName: String, itemName: String, quantity: String){
        
        self.itemName = itemName
        self.imageName = imageName
        self.quantity = quantity
    }
    
}


struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
       ContentView()
   }
}
