//
//  ViewController.swift
//  BT_Pas
//
//  Created by Macbook on 08/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func actionRestore(_ sender: Any) {
        
         arrSTT = ["1", "2" ,"3" ,"4" ,"5 ","6" ,"7" ,"8" ,"9", "10"]
        
         arrHinh = [ UIImage(named: "H1")!,
                        UIImage(named: "H2")!,
                        UIImage(named: "H3")!,
                        UIImage(named: "H4")!,
                        UIImage(named: "H5")!,
                        UIImage(named: "H6")!,
                        UIImage(named: "H7")!,
                        UIImage(named: "H8")!,
                        UIImage(named: "H9")!,
                        UIImage(named: "H10")!,
                        
        ]
                        
        
         arrName = [ "Quách Phù", "Nguyễn Văn Sơn", "Lương Văn Hùng", "Tống Giang", "Lâm Xung", "Tiều Cái", "Võ Tòng", "Lỗ Chí Thâm", "Tiểu Long Nữ", "Chu Chỉ Nhược"]
        tableView.reloadData()
    }
    
    
    

    @IBOutlet weak var tableView: UITableView!
    
    
    
    var arrSTT = ["1", "2" ,"3" ,"4" ,"5 ","6" ,"7" ,"8" ,"9", "10"]
    
    var arrHinh = [ UIImage(named: "H1")!,
                    UIImage(named: "H2")!,
                    UIImage(named: "H3")!,
                    UIImage(named: "H4")!,
                    UIImage(named: "H5")!,
                    UIImage(named: "H6")!,
                    UIImage(named: "H7")!,
                    UIImage(named: "H8")!,
                    UIImage(named: "H9")!,
                    UIImage(named: "H10")!,
                    
    ]
                    
    
    var arrName = [ "Quách Phù", "Nguyễn Văn Sơn", "Lương Văn Hùng", "Tống Giang", "Lâm Xung", "Tiều Cái", "Võ Tòng", "Lỗ Chí Thâm", "Tiểu Long Nữ", "Chu Chỉ Nhược"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configTableView()
        
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    

}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.configCell(image: arrHinh[indexPath.row], name: arrName[indexPath.row], stt: arrSTT[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController(title: "Selected", message: "Bạn Đã Chọn \(arrName[indexPath.row])", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arrSTT.remove(at: indexPath.row)
            arrName.remove(at: indexPath.row)
            arrHinh.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
