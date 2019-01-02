//
//  ViewController.swift
//  RxSwiftPractice
//
//  Created by Developer on 1/2/19.
//  Copyright © 2019 Aaron. All rights reserved.
//

import UIKit
import RxSwift

/*protocol CharacterDelegate {
  func didSelectCharacter(_ name:String)
}*/
class DetailViewCntroller: UIViewController {

  //var delegate:CharacterDelegate?

  private let selectedCharacterVar = Variable("User")
  var selectedCharacter: Observable<String> {
    return selectedCharacterVar.asObservable()
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func characterSelected(_ sender: UIButton) {
    guard let characterName = sender.titleLabel?.text else { return }
    selectedCharacterVar.value = characterName
    /*if let delegateObject = delegate {
      delegateObject.didSelectCharacter(characterName)
      navigationController?.popViewController(animated: true)
    }*/
  }
}

