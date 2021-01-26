//
//  CodeBasedVC.swift
//  LoadViewControllers
//
//  Created by ignasiperez.com on 26/01/2021.
//

import UIKit

class CodeBasedVC: UIViewController {
  
  private let data: String
  
  
  init(data: String) {
    self.data = data
    
    super.init(nibName: nil, bundle: nil)
  }
  
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    print(">> Create views here")
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
