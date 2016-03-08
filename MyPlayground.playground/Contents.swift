//: Playground - noun: a place where people can play


import Alamofire
import XCPlayground
import PromiseKit
import SwiftyJSON
XCPSetExecutionShouldContinueIndefinitely()


var str = "Hello, playground"

Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"]).responseString { response in
    print(response)
}

