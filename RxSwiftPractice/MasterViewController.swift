//
//  MasterViewController.swift
//  RxSwiftPractice
//
//  Created by Developer on 1/2/19.
//  Copyright © 2019 Aaron. All rights reserved.
//

import UIKit
import RxSwift

class MasterViewController: UIViewController{//, CharacterDelegate {
  @IBOutlet weak var greetingabel:UILabel!
  let disposeBag = DisposeBag()
  func didSelectCharacter(_ name: String) {
    self.greetingabel.text = "Hello \(name)"
  }
  override func viewDidLoad() {
      super.viewDidLoad()
  }
  @IBAction func selectCharacter(_ sender: Any) {
    let detailVC = storyboard?.instantiateViewController(withIdentifier: Constants.DETAILCV_NAME) as! DetailViewCntroller
    //detailVC.delegate = self
    detailVC.selectedCharacter.subscribe(onNext: {
      [weak self] character in self?.greetingabel.text = "Hello \(character)"
      self?.navigationController?.popViewController(animated: true)
    }).disposed(by: disposeBag)
    navigationController?.pushViewController(detailVC, animated: true)
  }
}
