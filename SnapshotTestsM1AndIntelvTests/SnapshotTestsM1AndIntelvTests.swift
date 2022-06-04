//
//  SnapshotTestsM1AndIntelvTests.swift
//  SnapshotTestsM1AndIntelvTests
//
//  Created by Raman Singh on 2022-06-03.
//

import Quick
import Nimble
import Nimble_Snapshots
import UIKit
@testable import SnapshotTestsM1AndIntelv

class SnapshotTestsM1AndIntelvTests: QuickSpec {

  override func spec() {
    describe("Some random label") {
      it("should work") {
        let someLabel = UILabel()
        someLabel.text = "Testing"
        someLabel.embedInWindow()
        someLabel.backgroundColor = .red
        📷(snapshottable: someLabel)
        expect(someLabel).to(haveValidSnapshot())
      }
      
      it("should type out all the letters") {
        let someLabel = UILabel()
        someLabel.text = "abcdefghijklmnopqrstuvwxyz" + "abcdefghijklmnopqrstuvwxyz".uppercased() + "1234567890"
        someLabel.numberOfLines = 0
        someLabel.embedInWindow()
        someLabel.backgroundColor = .red
        📷(snapshottable: someLabel)
        expect(someLabel).to(haveValidSnapshot())
      }
      
    }
  }

}
