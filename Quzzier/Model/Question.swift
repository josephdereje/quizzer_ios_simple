//
//  Compare.swift
//  Quzzier
//
//  Created by joseph on 2020/5/5.
//  Copyright © 2020 joseph_Eagles. All rights reserved.
//

import Foundation

struct  Question{
    
   // let  quiz: [String:String]
    let text: String
    let  answers: String

    init(q: String , a: String){
        
      self.text = q
      self.answers = a
        
    }
    
}
