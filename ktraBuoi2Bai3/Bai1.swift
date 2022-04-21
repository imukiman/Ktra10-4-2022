//
//  Bai1.swift
//  ktraBuoi2Bai3
//
//  Created by MacOne-YJ4KBJ on 4/20/22.
//

import UIKit

class Bai1: UIViewController {
    var ball = UIView()
    var timer = Timer()
    var boolRun = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ball.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        ball.layer.cornerRadius = 50
        ball.layer.masksToBounds = true
        ball.backgroundColor = .red
        view.addSubview(ball)
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { (_) in
            self.runBall()
        })
        
    }
    func runBall(){
        if boolRun{
            if ball.frame.maxX < view.frame.maxX{
                ball.frame.origin.x += 2
                ball.frame.origin.y += 2 * CGFloat((view.frame.maxY - 100) / (view.frame.maxX - 100))
            }
            else{
                boolRun = !boolRun
            }
        }
        else{
            if ball.frame.minX > 0{
                ball.frame.origin.x -= 2
                ball.frame.origin.y -= 2 * CGFloat((view.frame.maxY - 100) / (view.frame.maxX - 100))
            }
            else{
                boolRun = !boolRun
            }
        }
    }

}
