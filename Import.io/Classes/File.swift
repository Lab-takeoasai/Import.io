//
//  File.swift
//  Import.io
//
//  Created by 浅井 岳大 on 2016/03/09.
//  Copyright © 2016年 浅井 岳大. All rights reserved.
//

import Foundation


class Animal {
    
    private let name: String
    
    init(name: String)
    {
        self.name = name
    }
    
    func selfIntroduction() -> String
    {
        return "My name is \(self.name)"
    }
    
}