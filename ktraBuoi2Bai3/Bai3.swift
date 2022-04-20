//
//  ViewController.swift
//  ktraBuoi2Bai3
//
//  Created by MacOne-YJ4KBJ on 4/19/22.
//

import UIKit

class Bai3: UIViewController {
    
    var imgTopLeft = UIImageView()
    var lblTop = UILabel()
    var bell = UIButton()
    var bell1 = UIView()
    var avaTop = UIImageView()
    var btTop = UIButton()
    var viewMain = UIView()
    var lbl1Main = UILabel()
    var lbl2Main = UILabel()
    var btMainStart = UIButton()
    var imgMainMain = UIImageView()
    var view2Main = UIView()
    var btMain2 = UIButton()
    var lblBot1Main2 = UILabel()
    var lblBot2Main2 = UILabel()
    
    var btTbar1 = UIButton()
    var btTbar2 = UIButton()
    var btTbar3 = UIButton()
    var btTbar4 = UIButton()
    var line = UIView()
    var line1 = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        imgTopLeft.frame = CGRect(x: 20, y: 60, width: 30, height: 30)
        imgTopLeft.image = UIImage(named: "vn")
        
        lblTop.text = "fleet"
        lblTop.frame = CGRect(x: 60, y: 60, width: 100, height: 30)
        lblTop.textColor = .black
        lblTop.font = UIFont(name: "Arial", size: 30)
        
        btTop.frame = CGRect(x: view.frame.width - 50, y: 60, width: 30, height: 30)
        btTop.setBackgroundImage(UIImage(systemName: "power"), for: .normal)
        btTop.tintColor = .lightGray

        avaTop.frame = CGRect(x: view.frame.width - 90, y: 60, width: 30, height: 30)
        avaTop.image = UIImage(named: "tree")
        avaTop.layer.masksToBounds = true
        avaTop.layer.cornerRadius = 15
        
        bell.setBackgroundImage(UIImage(systemName: "bell"), for: .normal)
        bell.frame = CGRect(x: view.frame.width - 130, y: 60, width: 30, height: 30)
        bell.tintColor = .lightGray
        bell.addTarget(self, action: #selector(notification), for: .touchUpInside)
        
        bell1.frame = CGRect(x: 22, y: 0, width: 8, height: 8)
        bell1.backgroundColor = .green
        bell1.tintColor = .lightGray
        bell1.layer.masksToBounds = true
        bell1.layer.cornerRadius = 4
        bell.addSubview(bell1)
        
        viewMain.frame = CGRect(x: 0, y: 150, width: view.frame.width - 40, height: view.frame.height - 180)
        viewMain.backgroundColor = #colorLiteral(red: 0.9559426904, green: 0.960986793, blue: 0.9607480168, alpha: 1)
        viewMain.layer.masksToBounds = true
        viewMain.layer.cornerRadius = 10
        viewMain.center.x = view.center.x
        
        lbl1Main.text = "Air, sleep, dream"
        lbl1Main.numberOfLines = 3
        lbl1Main.font = UIFont(name: "Arial", size: 50)
        lbl1Main.frame = CGRect(x: 0, y: 0, width: 250, height: 150)
        lbl1Main.center.x = viewMain.center.x
        viewMain.addSubview(lbl1Main)
        
        lbl2Main.text = "Find and book a great experience."
        lbl2Main.frame = CGRect(x: 0, y: 140, width: 300, height: 30)
        lbl2Main.textAlignment = .center
        lbl2Main.font = UIFont.systemFont(ofSize: 15)
        lbl2Main.center.x = viewMain.bounds.width/2
        viewMain.addSubview(lbl2Main)
        
        btMainStart.frame = CGRect(x: 0, y: 190, width: 190, height: 40)
        btMainStart.setTitle("Start your search", for: .normal)
        btMainStart.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        btMainStart.backgroundColor = #colorLiteral(red: 0.2303719521, green: 0.44017905, blue: 0.995121181, alpha: 1)
        btMainStart.layer.masksToBounds = true
        btMainStart.layer.cornerRadius = 20
        btMainStart.center.x = viewMain.bounds.width/2
        btMainStart.addTarget(self, action: #selector(startToSearch), for: .touchUpInside)
        viewMain.addSubview(btMainStart)
        
        imgMainMain.frame = CGRect(x: 0, y: 260, width: viewMain.bounds.width, height: viewMain.bounds.height - 260)
        imgMainMain.image = UIImage(named: "tree")
        viewMain.addSubview(imgMainMain)
        
        view2Main.frame = CGRect(x: 0, y: viewMain.bounds.height - 155, width: viewMain.bounds.width - 10, height: 150)
        view2Main.backgroundColor = .white
        view2Main.layer.masksToBounds = true
        view2Main.layer.cornerRadius = 10
        view2Main.center.x = viewMain.bounds.width/2
        
        btMain2.frame = CGRect(x: view2Main.frame.width - 60, y: view2Main.frame.height - 60, width: 50, height: 50)
        
        btMain2.layer.masksToBounds = true
        btMain2.layer.cornerRadius = 25
        var imgbt = UIImageView()
        imgbt.frame = CGRect(x: 15, y: 15, width: 20, height: 20)
        imgbt.tintColor = .white
        imgbt.image = UIImage(systemName: "magnifyingglass")
        btMain2.addSubview(imgbt)
        btMain2.backgroundColor = #colorLiteral(red: 0.2303719521, green: 0.44017905, blue: 0.995121181, alpha: 1)
        view2Main.addSubview(btMain2)
        
        lblBot1Main2.frame = CGRect(x: 10, y: view2Main.frame.height - 55, width: 200, height: 20)
        lblBot1Main2.text = "Location"
        lblBot1Main2.font = UIFont.boldSystemFont(ofSize: 20)
        lblBot1Main2.textColor = .black
        view2Main.addSubview(lblBot1Main2)
        
        lblBot2Main2.frame = CGRect(x: 10, y: view2Main.frame.height - 30, width: 200, height: 20)
        lblBot2Main2.text = "Where are you going?"
        lblBot2Main2.textColor = .lightGray
        lblBot2Main2.font = UIFont.systemFont(ofSize: 15)
        view2Main.addSubview(lblBot2Main2)
        
        
        view.addSubview(lblTop)
        view.addSubview(btTop)
        view.addSubview(imgTopLeft)
        view.addSubview(avaTop)
        view.addSubview(bell)
        view.addSubview(viewMain)
        viewMain.addSubview(view2Main)
        
        createTabbar()
    }
    
    func createTabbar(){
        print(1)
        btTbar1.frame = CGRect(x: 10, y: 0, width: 45, height: 50)
        btTbar1.setTitle("Stays", for: .normal)
        btTbar1.setTitleColor(.black, for: .normal)
        btTbar1.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        btTbar1.addTarget(self, action: #selector(tabbar1), for: .touchUpInside)
        
        btTbar2.frame = CGRect(x: 90, y: 0, width: 50, height: 50)
        btTbar2.setTitle("Flights", for: .normal)
        btTbar2.setTitleColor(.lightGray, for: .normal)
        btTbar2.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        btTbar2.addTarget(self, action: #selector(tabbar2), for: .touchUpInside)
        
        btTbar3.frame = CGRect(x: 170, y: 0, width: 40, height: 50)
        btTbar3.setTitle("Cars", for: .normal)
        btTbar3.setTitleColor(.lightGray, for: .normal)
        btTbar3.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        btTbar3.addTarget(self, action: #selector(tabbar3), for: .touchUpInside)
        
        btTbar4.frame = CGRect(x: 240, y: 0, width: 85, height: 50)
        btTbar4.setTitle("Things to do", for: .normal)
        btTbar4.setTitleColor(.lightGray, for: .normal)
        btTbar4.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        btTbar4.addTarget(self, action: #selector(tabbar4), for: .touchUpInside)
        
        line.frame = CGRect(x: 0, y: 50, width: 600, height: 2)
        line.backgroundColor = #colorLiteral(red: 0.9559426904, green: 0.960986793, blue: 0.9607480168, alpha: 1)
        line.layer.masksToBounds = true
        
        line1.frame = CGRect(x: btTbar1.frame.minX, y: 0, width: btTbar1.frame.width, height: 2)
        line1.backgroundColor = .gray
        line.addSubview(line1)
        
        view2Main.addSubview(btTbar1)
        view2Main.addSubview(btTbar2)
        view2Main.addSubview(btTbar3)
        view2Main.addSubview(btTbar4)
        view2Main.addSubview(line)
        
    }

    
    @objc func notification(){
        bell1.backgroundColor = .clear
        print("Notification")
    }
    
    @objc func startToSearch(){
        print("start to search")
        print(view2Main.frame)
    }
    
    @objc func tabbar1(){
        line1.removeFromSuperview()
        line1.frame = CGRect(x: btTbar1.frame.minX, y: 0, width: btTbar1.frame.width, height: 2)
        line1.backgroundColor = .gray
        line.addSubview(line1)
        
        btTbar1.setTitleColor(.black, for: .normal)
        
        btTbar2.setTitleColor(.lightGray, for: .normal)
        btTbar3.setTitleColor(.lightGray, for: .normal)
        btTbar4.setTitleColor(.lightGray, for: .normal)
    }
    
    @objc func tabbar2(){
        line1.removeFromSuperview()
        line1.frame = CGRect(x: btTbar2.frame.minX, y: 0, width: btTbar2.frame.width, height: 2)
        line1.backgroundColor = .gray
        line.addSubview(line1)
        
        btTbar2.setTitleColor(.black, for: .normal)
        
        btTbar1.setTitleColor(.lightGray, for: .normal)
        btTbar3.setTitleColor(.lightGray, for: .normal)
        btTbar4.setTitleColor(.lightGray, for: .normal)
    }
    
    @objc func tabbar3(){
        line1.removeFromSuperview()
        line1.frame = CGRect(x: btTbar3.frame.minX, y: 0, width: btTbar3.frame.width, height: 2)
        line1.backgroundColor = .gray
        line.addSubview(line1)
        
        btTbar3.setTitleColor(.black, for: .normal)
        
        btTbar1.setTitleColor(.lightGray, for: .normal)
        btTbar2.setTitleColor(.lightGray, for: .normal)
        btTbar4.setTitleColor(.lightGray, for: .normal)
    }
    
    @objc func tabbar4(){
        line1.removeFromSuperview()
        line1.frame = CGRect(x: btTbar4.frame.minX, y: 0, width: btTbar4.frame.width, height: 2)
        line1.backgroundColor = .gray
        line.addSubview(line1)
        
        btTbar4.setTitleColor(.gray, for: .normal)
        
        btTbar2.setTitleColor(.lightGray, for: .normal)
        btTbar3.setTitleColor(.lightGray, for: .normal)
        btTbar1.setTitleColor(.lightGray, for: .normal)
    }

}

