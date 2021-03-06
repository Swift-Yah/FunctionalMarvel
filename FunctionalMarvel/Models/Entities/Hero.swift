//
//  Hero.swift
//  FunctionalMarvel
//
//  Created by Segii Shulga on 10/7/15.
//  Copyright © 2015 Sergey Shulga. All rights reserved.
//

import Argo
import Curry

struct Hero {
   let id:Int
   let name:String
   let thumbnail:Thumbnail
}

extension Hero:Decodable {
   static func decode(j: JSON) -> Decoded<Hero> {
      return curry(Hero.init)
         <^> j <| "id"
         <*> j <| "name"
         <*> j <| "thumbnail"
   }
}
