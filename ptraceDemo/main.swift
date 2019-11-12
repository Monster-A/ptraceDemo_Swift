//
//  main.swift
//  ptraceDemo
//
//  Created by lishuijiao on 2019/11/11.
//  Copyright © 2019 Lisj. All rights reserved.
//

import Foundation
import UIKit

autoreleasepool {
    disable_gdb()
    UIApplicationMain(
        CommandLine.argc,
        UnsafeMutableRawPointer(CommandLine.unsafeArgv)
            .bindMemory(
                to: UnsafeMutablePointer<Int8>.self,
                capacity: Int(CommandLine.argc)),
        nil,
        NSStringFromClass(AppDelegate.self)
    )
}
