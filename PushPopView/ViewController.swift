//
//  ViewController.swift
//  PushPopView
//
//  Created by Minh Tuan on 6/6/17.
//  Copyright © 2017 Minh Tuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var anh: UIImageView!
    @IBAction func acc_push(_ sender: Any) {
        let batdau = self.storyboard?.instantiateViewController(withIdentifier: "dangnhap") as! DangNhap
        self.navigationController?.pushViewController(batdau, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       addAnh()
        kichThuoc()
    }
    func addAnh(){
        anh = UIImageView(frame: CGRect(x: (self.view.bounds.width / 2 - 25), y: (self.view.bounds.height / 2 - 25), width: 50, height: 50))
        anh.image = UIImage(named: "daulau")
        view.addSubview(anh)
    }
    func kichThuoc(){
        UIView.animate(withDuration: 8, animations: {
            self.anh.transform = CGAffineTransform(scaleX: 7.0, y: 7.0)
        }){ _ in
            UIView.animate(withDuration: 8, animations: {
                self.anh.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            }) { _ in
                self.kichThuoc()
            }
        }
    }
 


}

