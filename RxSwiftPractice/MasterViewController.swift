//
//  MasterViewController.swift
//  RxSwiftPractice
//
//  Created by Developer on 1/2/19.
//  Copyright © 2019 Aaron. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController, CharacterDelegate {
  @IBOutlet weak var greetingabel:UILabel!
  func didSelectCharacter(_ name: String) {
    self.greetingabel.text = "Hello \(name)"
  }
  override func viewDidLoad() {
      super.viewDidLoad()
  }
  @IBAction func selectCharacter(_ sender: Any) {
    let detailVC = storyboard?.instantiateViewController(withIdentifier: Constants.DETAILCV_NAME) as! DetailViewCntroller
    detailVC.delegate = self
    navigationController?.pushViewController(detailVC, animated: true)
  }
}
