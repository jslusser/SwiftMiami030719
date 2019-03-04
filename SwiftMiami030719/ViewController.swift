//
//  ViewController.swift
//  SwiftMiami030719
//
//  Created by James Slusser on 3/4/19.
//  Copyright © 2019 James Slusser. All rights reserved.
//

// UIProgressView

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressView: UIProgressView!
    
    let progress = Progress(totalUnitCount: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressView.transform = progressView.transform.scaledBy(x: 1, y: 5)
    }
    
    @IBAction func didTapStartProgress(_ sender: Any) {
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            
            guard self.progress.isFinished == false else {
                timer.invalidate()
                print("finished")
                
                return
            }
            
            self.progress.completedUnitCount += 1
            
            let progressFloat = Float(self.progress.fractionCompleted)
            self.progressView.setProgress(progressFloat, animated: true)
            
            
        }
        
        
    }
    
}
