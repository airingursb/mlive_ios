//
//  ViewController.swift
//  mlive_ios
//
//  Created by 邓国雄 on 2020/3/17.
//  Copyright © 2020 邓国雄. All rights reserved.
//

import UIKit
import Flutter
import flutter_boost

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    // Make a button to call the showFlutter function when pressed.
    let button = UIButton(type:UIButton.ButtonType.custom)
    button.addTarget(self, action: #selector(showFlutter), for: .touchUpInside)
    button.setTitle("Show Flutter!", for: UIControl.State.normal)
    button.frame = CGRect(x: 80.0, y: 210.0, width: 160.0, height: 40.0)
    button.backgroundColor = UIColor.blue
    self.view.addSubview(button)
  }

  @objc func showFlutter() {
    FlutterBoostPlugin.open("homeManager", urlParams:[kPageCallBackId:"MycallbackId#1"], exts: ["animated":true], onPageFinished: { (_ result:Any?) in
        print(String(format:"call me when page finished, and your result is:%@", result as! CVarArg));
    }) { (f:Bool) in
        print(String(format:"page is opened"));
    }
//    let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
//    let flutterViewController =
//        FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
//    present(flutterViewController, animated: true, completion: nil)
  }
}
