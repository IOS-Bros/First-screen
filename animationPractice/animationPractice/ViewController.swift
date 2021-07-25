//
//  ViewController.swift
//  animationPractice
//
//  Created by 윤재필 on 2021/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var frameBtn: UIButton!
    @IBOutlet weak var boundsBtn: UIButton!
    @IBOutlet weak var centerBtn: UIButton!
    @IBOutlet weak var transformBtn: UIButton!
    @IBOutlet weak var alphaBtn: UIButton!
    @IBOutlet weak var backgroundColorBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("yyyy-MM-dd HH:mm:ss".stringFromDate() + ": view load")
        
        frameBtn.addTarget(self, action: #selector(frameAnimate), for: .touchUpInside)
        
        boundsBtn.addTarget(self, action: #selector(boundsAnimate), for: .touchUpInside)
        
        centerBtn.addTarget(self, action: #selector(centerAnimate), for: .touchUpInside)
        
        transformBtn.addTarget(self, action: #selector(transformAnimate), for: .touchUpInside)
        
        alphaBtn.addTarget(self, action: #selector(alphaAnimate), for: .touchUpInside)
        
        backgroundColorBtn.addTarget(self, action: #selector(backgroundColorAnimate), for: .touchUpInside)
    }
    
    func animateEnd(){
        print("yyyy-MM-dd HH:mm:ss".stringFromDate() + "에 애니메이션 종료")
    }


}

extension ViewController{
    @objc private func frameAnimate(){
            UIView.animate(withDuration: 2,
                           delay: 0,
                           usingSpringWithDamping: 0.6,
                           initialSpringVelocity: 1,
                           options: [.curveEaseIn],
                           animations: {
                            self.logo.frame = .init(x: 0, y: 0, width: 100, height: 100)
                           })
        
    }
    @objc private func boundsAnimate(){
            UIView.animate(withDuration: 2,
                           delay: 0,
                           usingSpringWithDamping: 0.6,
                           initialSpringVelocity: 1,
                           options: [.curveEaseIn],
                           animations: {
                            self.logo.bounds = .init(x: -100, y: -100, width: 100, height: 100)
            })

        }
        
        @objc private func centerAnimate(){
            UIView.animate(withDuration: 2,
                           delay: 0,
                           usingSpringWithDamping: 0.6,
                           initialSpringVelocity: 1,
                           options: [.curveEaseIn],
                           animations: {
                            self.logo.center = .init(x: 100, y: 100)
            })

        }
        
        @objc private func transformAnimate(){
            UIView.animate(withDuration: 2,
                           delay: 0,
                           usingSpringWithDamping: 0.6,
                           initialSpringVelocity: 1,
                           options: [.curveEaseIn],
                           animations: {
                            self.logo.transform = .init(translationX: -10, y: -10)
            })

        }
        
        @objc private func alphaAnimate(){
            UIView.animate(withDuration: 2,
                           delay: 0,
                           usingSpringWithDamping: 0.6,
                           initialSpringVelocity: 1,
                           options: [.curveEaseIn],
                           animations: {
                            self.logo.alpha = 0
            })

        }
        
        @objc private func backgroundColorAnimate(){
            UIView.animate(withDuration: 2,
                           delay: 0,
                           usingSpringWithDamping: 0.6,
                           initialSpringVelocity: 1,
                           options: [.curveEaseIn],
                           animations: {
                            self.logo.backgroundColor = .orange
            })
        }
}

extension String {
    func stringFromDate() -> String {
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = self
        dateFormatter.locale = Locale(identifier: "ko_KR")
        return dateFormatter.string(from: now)
    }
}

