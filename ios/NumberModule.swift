//
//  NumberModule.swift
//  DummyProject2
//
//  Created by TransformHub on 09/04/22.
//

import Foundation
import React

@objc(NumberModule)
class NumberModule: NSObject {
  
  var fileResolve: RCTPromiseResolveBlock!
  var fileReject: RCTPromiseRejectBlock!
  
  @objc func sendNumber(_ number: String,resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock){
    fileResolve = resolve
    fileReject = reject
    
    self.fileResolve("Hello \(number). My birthday is in August")
    
  }

  @objc static func requiresMainQueueSetup() -> Bool {
    return false
  }
  
}




































































