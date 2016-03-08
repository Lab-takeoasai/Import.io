import UIKit
import Quick
import Nimble

class QuickSampleSpec: QuickSpec {
    override func spec() {
        describe("a animal") {
            var animal: Animal?
            beforeEach {
                animal = Animal(name: "Po-chi")
            }
            
            it("self-introduction") {
                expect(animal?.selfIntroduction()).to(equal("My name is Pochi"))
            }
        }
    }
}