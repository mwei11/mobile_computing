//
//  loading2ViewController.swift
//  Life_Tracker
//
//  Created by junwenz on 2017/10/3.
//  Copyright © 2017年 Microsoft. All rights reserved.
//

import UIKit
import SwiftGifOrigin

class loading2ViewController: UIViewController {
    
    var username:String?
    
    
    override func viewDidLoad() {
        //loading.startAnimating()
        super.viewDidLoad()
        let imageData = try! Data(contentsOf: Bundle.main.url(forResource: "main3-iloveimg-cropped", withExtension: "gif")!)
        let advTimeGif = UIImage.gif(data: imageData)
        let loadingImage = UIImageView(image:advTimeGif)
        loadingImage.frame = CGRect (x: 10.0, y: 222.0, width: 290.0, height: 202.0)
        
        //CGRect()
        
        view.addSubview(loadingImage)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        username = UserDefaults.standard.object(forKey: "Username") as? String
        
        if (username == nil) {
            self.performSegue(withIdentifier: "Login", sender: self)
        } else {
            self.performSegue(withIdentifier: "Home", sender: self)
        }
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
