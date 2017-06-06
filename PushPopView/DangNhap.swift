//
//  DangNhap.swift
//  PushPopView
//
//  Created by Minh Tuan on 6/6/17.
//  Copyright © 2017 Minh Tuan. All rights reserved.
//

import UIKit

class DangNhap: UIViewController {
    
    @IBOutlet weak var tf_email: UITextField!
    
    @IBOutlet weak var tf_Password: UITextField!
    
    @IBAction func acc_Login(_ sender: Any) {
        dangNhap()
    }
    
    @IBAction func acc_DangKy(_ sender: Any) {
        themmoi()
    }
    // Trở lại trang trước
    @IBAction func acc_Pop(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    var taiKhoan = ["tuan":"123","dat":"234","khoa":"345"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    func dangNhap(){
        if let password = taiKhoan[tf_email.text!]{
            if password == tf_Password.text {
                let baiToan = self.storyboard?.instantiateViewController(withIdentifier: "ToanTreEm") as! ToanTreEm
                self.navigationController?.pushViewController(baiToan, animated: true)
                print("dang nhap thanh cong")
            }else{
                thongBao1()
            }
        }else{
            thongBao2()
        }
    }
    func themmoi(){
        if let themTK = taiKhoan[tf_email.text!]{
            thongBao3()
        }else if(tf_email.text == ""){
            thongBao4()
        }else if (tf_Password.text == ""){
            thongBao4()
        }else{
            taiKhoan[tf_email.text!] = tf_Password.text
            thongBao5()
        }
    }
    func thongBao1(){
        let alertController = UIAlertController(title: "Cảnh Báo",message: "Mật khẩu không đúng", preferredStyle: UIAlertControllerStyle.alert)
        let ok = UIAlertAction(title: "ok", style: .default, handler: { (action) -> Void in
            self.tf_Password.text = ""
        })
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler:{ (action) -> Void in exit(1) })
        alertController.addAction(ok)
        alertController.addAction(cancel)
        self.present(alertController, animated: true, completion: nil)
    }
    func thongBao2(){
        let alertController = UIAlertController(title: "Cảnh Báo",message: "Tài khoản không tồn tại", preferredStyle: UIAlertControllerStyle.alert)
        let ok = UIAlertAction(title: "ok", style: .default, handler: { (action) -> Void in
            self.tf_email.text = ""
            self.tf_Password.text = ""
        })
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler:{ (action) -> Void in exit(1) })
        alertController.addAction(ok)
        alertController.addAction(cancel)
        self.present(alertController, animated: true, completion: nil)
    }
    func thongBao3(){
        let alertController = UIAlertController(title: "Cảnh Báo",message: "Tài khoản đã tồn tại", preferredStyle: UIAlertControllerStyle.alert)
        let ok = UIAlertAction(title: "ok", style: .default, handler: { (action) -> Void in
            self.tf_email.text = ""
            self.tf_Password.text = ""
        })
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler:{ (action) -> Void in exit(1) })
        alertController.addAction(ok)
        alertController.addAction(cancel)
        self.present(alertController, animated: true, completion: nil)
    }
    func thongBao4(){
        let alertController = UIAlertController(title: "Cảnh Báo",message: "Chưa nhập tên tài khoản hoặc mật khẩu", preferredStyle: UIAlertControllerStyle.alert)
        let ok = UIAlertAction(title: "ok", style: .default, handler: { (action) -> Void in
            self.tf_email.text = ""
            self.tf_Password.text = ""
        })
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler:{ (action) -> Void in exit(1) })
        alertController.addAction(ok)
        alertController.addAction(cancel)
        self.present(alertController, animated: true, completion: nil)
    }
    func thongBao5(){
        let alertController = UIAlertController(title: "Cảnh Báo",message: "Đăng ký thành công", preferredStyle: UIAlertControllerStyle.alert)
        let ok = UIAlertAction(title: "ok", style: .default, handler: { (action) -> Void in
            self.tf_email.text = ""
            self.tf_Password.text = ""
        })
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler:{ (action) -> Void in exit(1) })
        alertController.addAction(ok)
        alertController.addAction(cancel)
        self.present(alertController, animated: true, completion: nil)
    }
    
}
