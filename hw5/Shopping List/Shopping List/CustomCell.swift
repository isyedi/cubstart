//
//  CustomCell.swift
//  Shopping List
//
//  Created by Tony Hong on 3/12/22.
//

import SwiftUI

struct CustomCell: View {
    
    var imageName : String
    var itemName : String
    var quantity : String
    
    
    var body: some View {
        HStack(){
            Image(imageName).resizable().frame(width: 55, height: 40)
            Text(itemName)
            Text(quantity).frame(maxWidth: .infinity, alignment: .trailing)
            
        }
    }
}

