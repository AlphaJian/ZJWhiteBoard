//
//  ViewController2.swift
//  TestSVG
//
//  Created by ken.zhang on 2019/7/8.
//  Copyright © 2019 ken.zhang. All rights reserved.
//

import UIKit
import FantasticSnowflake

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
        guard let path = Bundle.main.path(forResource: "path2", ofType: "svg"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
            let document = Document(data: data)
            else { return }

        let view = document.svg.view(size: CGSize(width: 300, height: 300))
        self.view.addSubview(view)




//        let layer = CATextLayer()
//        layer.string = "adasd"
//        layer.position = self.view.center
//        layer.frame = self.view.bounds
//        layer.backgroundColor = UIColor.green.cgColor
//        layer.foregroundColor = UIColor.red.cgColor
//        self.view.layer.addSublayer(layer)
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
