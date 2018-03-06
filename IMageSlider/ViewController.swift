//
//  ViewController.swift
//  IMageSlider
//
//  Created by ZainAnjum on 05/03/2018.
//  Copyright © 2018 ZainAnjum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.contentSize = CGSize(width: 12, height: 200)
        sv.backgroundColor = .white
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.isPagingEnabled = true
        return sv
    }()
    var imageArray = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageArray = [#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "3")]
        scrollView.frame = view.frame
        view.addSubview(scrollView)
        for i in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: view.frame.width, height: 200)
            
            scrollView.contentSize.width = scrollView.frame.width * CGFloat(i + 1)
            scrollView.addSubview(imageView)
            
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

