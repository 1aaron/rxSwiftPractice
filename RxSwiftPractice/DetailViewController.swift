//
//  ViewController.swift
//  RxSwiftPractice
//
//  Created by Developer on 1/2/19.
//  Copyright © 2019 Aaron. All rights reserved.
//

import UIKit

protocol CharacterDelegate {
  func didSelectCharacter(_ name:String)
}
class DetailViewCntroller: UIViewController {

  var delegate:CharacterDelegate?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBAction func characterSelected(_ sender: UIButton) {
    guard let characterName = sender.titleLabel?.text else { return }
    if let delegateObject = delegate {
      delegateObject.didSelectCharacter(characterName)
      navigationController?.popViewController(animated: true)
    }
  }
}

