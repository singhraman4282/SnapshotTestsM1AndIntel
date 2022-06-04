//
//  Helpers.swift
//  SnapshotTestsM1AndIntelvTests
//
//  Created by Raman Singh on 2022-06-03.
//

import Foundation
import UIKit
import Nimble
import Nimble_Snapshots

extension UIViewController {
  
  @discardableResult
  func embedInWindow() -> UIWindow {
    let window = UIWindow()
    window.isHidden = false
    window.frame = view.bounds
    window.rootViewController = self
    view.setNeedsLayout()
    view.layoutIfNeeded()
    return window
  }
  
}

extension UIView {
  
  @discardableResult
  func embedInWindow() -> UIWindow {
    let vc = UIViewController()
    vc.view.addSubview(self)
    translatesAutoresizingMaskIntoConstraints = false
    leadingAnchor.constraint(equalTo: vc.view.leadingAnchor).isActive = true
    topAnchor.constraint(equalTo: vc.view.topAnchor).isActive = true
    trailingAnchor.constraint(lessThanOrEqualTo: vc.view.trailingAnchor, constant: 0).isActive = true
    heightAnchor.constraint(greaterThanOrEqualToConstant: 0).isActive = true
    return vc.embedInWindow()
  }
  
}

func 📷(_ file: FileString = #file, line: UInt = #line, _ snapshottable: Snapshotable) {
  expect(file: file, line: line, snapshottable).to(recordSnapshot())
}
