//: Playground - noun: a place where people can play


import Alamofire
import XCPlayground
import PromiseKit
import SwiftyJSON
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true // 非同期通信ok


let TITLE = "floathideblo_link_1/_text"
let DATE = "floathideblo_date/_utc"
let DESCRIPTION = "bloinword_description"
let TAG1 = "allbase_links_1/_text"
let TAG2 = "allbase_links_2/_text"
let WORDS = "floathideblo_value_2"
let ORIGINAL = "blogenre_link/_text"

// scrap from hameln
Alamofire.request(.GET, "https://api.import.io/store/connector/f3a04e51-15fa-43ba-a4be-a56166433cab/_query?input=webpage/url:https%3A%2F%2Fsyosetu.org%2F%3Fmode%3Drank&&_apikey=05d63b1b168542b087016be48806b19534b2d408aa4ef98023adfca563fefccf3d1767eae99a4b0b906bf48817d6402d5518a9fa6e7cd75fe9cc14e619cddd7a18a997abf29dff07eb1188d8b25b74e0").responseJSON { response in
    guard let v = response.result.value else {
        // error
        return
    }
    JSON(v)["results"].forEach({ (_, json) -> () in
        let info = [
            "title": json[TITLE],
            "date": json[DATE],
            "description": json[DESCRIPTION],
            "count": json[WORDS],
            "original": json[ORIGINAL]
        ]
        print(info)
    })
}
