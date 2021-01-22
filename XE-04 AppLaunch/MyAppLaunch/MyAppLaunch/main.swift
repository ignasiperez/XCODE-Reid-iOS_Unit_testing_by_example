//
//  main.swift
//  MyAppLaunch
//
//  Created by ignasiperez.com on 21/01/2021.
//

import UIKit

let appDelegateClass: AnyClass =
  NSClassFromString("TestingAppDelegate") ?? AppDelegate.self

UIApplicationMain(CommandLine.argc,
                  CommandLine.unsafeArgv,
                  nil,
                  NSStringFromClass(appDelegateClass))

