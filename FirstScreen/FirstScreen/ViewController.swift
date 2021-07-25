//
//  ViewController.swift
//  FirstScreen
//
//  Created by 윤재필 on 2021/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var initialImage: UIImageView!
    
    var animator: UIViewPropertyAnimator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let time = DispatchTime.now() + .seconds(2)
        DispatchQueue.main.asyncAfter(deadline: time, execute: self.moveToMain)
    }


    func moveToMain(){
        let mainVC = self.storyboard?.instantiateViewController(withIdentifier: "main")
        
        mainVC?.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        
        self.present(mainVC!, animated: true, completion: nil)
    }
}

