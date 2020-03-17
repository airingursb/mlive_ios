//
//  AppDelegate.swift
//  mlive_ios
//
//  Created by 邓国雄 on 2020/3/17.
//  Copyright © 2020 邓国雄. All rights reserved.
//

import UIKit
import Flutter
import flutter_boost
//import FlutterPluginRegistrant // Used to connect plugins.

@UIApplicationMain
class AppDelegate: FlutterAppDelegate { // More on the FlutterAppDelegate.
//  lazy var flutterEngine = FlutterEngine(name: "my flutter engine")

//  override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//    // Runs the default Dart entrypoint with a default Flutter route.
//    flutterEngine.run();
//    GeneratedPluginRegistrant.register(with: self.flutterEngine);
//    return super.application(application, didFinishLaunchingWithOptions: launchOptions);
//  }
    
  override func application(
      _ application: UIApplication,
      didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
      
      let router = PlatformRouterImp.init();
    FlutterBoostPlugin.sharedInstance().startFlutter(with: router, onStart: { (engine) in
      });
      
      self.window = UIWindow.init(frame: UIScreen.main.bounds)
      let viewController = ViewController.init()
      let navi = UINavigationController.init(rootViewController: viewController)
      self.window.rootViewController = navi
      self.window.makeKeyAndVisible()
      
      return true;
    }
}
