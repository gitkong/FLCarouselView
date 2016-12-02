//
//  ViewController.swift
//  FLCarouselView
//
//  Created by clarence on 16/11/26.
//  Copyright © 2016年 gitKong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var carousel : FLCarouselView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        carousel = FLCarouselView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.size.width, height: 300))
        let image1 = UIImage.init(named: "banner1")
        let image2 = UIImage.init(named: "banner2")
        let image3 = UIImage.init(named: "banner3")
        let image4 = "http://pic39.nipic.com/20140226/18071023_162553457000_2.jpg"
        let image5 = "http://photo.l99.com/source/11/1330351552722_cxn26e.gif"
        carousel?.images = [image1!,image2!,image3!,image4,image5]
        carousel?.carouselMode = FLCarouselView.FLCarouselMode.Fade
        carousel?.describeLabels = ["1111","2222","3333","4444","5555"]
        carousel?.timeInterval = 3
        self.view.addSubview(carousel!)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let image4 = "http://pic39.nipic.com/20140226/18071023_162553457000_2.jpg"
        let image5 = "http://photo.l99.com/source/11/1330351552722_cxn26e.gif"
        carousel?.images = [image4,image5]
    }

}

