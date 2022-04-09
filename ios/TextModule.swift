//
//  TextModule.swift
//  DummyProject2
//
//  Created by TransformHub on 09/04/22.
//

import Foundation
import React

@objc(TextModule)
class TextModule: NSObject {
  
  var fileResolve: RCTPromiseResolveBlock!
  var fileReject: RCTPromiseRejectBlock!
  
  @objc func sendText(_ name: String,resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock){
    fileResolve = resolve
    fileReject = reject
    
    self.fileResolve("Hello \(name). Hope you're doing well")
    
  }

  @objc static func requiresMainQueueSetup() -> Bool {
    return false
  }
  
}





































































