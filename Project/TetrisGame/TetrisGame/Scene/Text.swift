//
//  Text.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/10/31.
//

//import Foundation
import SwiftUI

struct Text : View {
    var body : some View{
        Text("hello world")
            .lineLimit(nil)
    }
}

struct Text_Previews : PreviewProvider{
    static var previews: some View{
     Text()
    }
}
