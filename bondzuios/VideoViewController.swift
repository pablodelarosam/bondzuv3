//
//  ViewController.swift
//  Bondzu
//
//  Created by Luis Mariano Arobes on 03/08/15.
//  Copyright (c) 2015 Bondzu. All rights reserved.
//

import UIKit
import MediaPlayer

class VideoViewController: UIViewController {
    
    
    //var moviePlayerController:MPMoviePlayerController!
    var moviePlayerController:MPMoviePlayerViewController!
    var url:NSURL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        url = NSURL(string: "http://hls.live.metacdn.com/hls-live/2050C7/bednxurcj/prairiedogs2_/prairiedogs2_,576,192,.m3u8");
        
        let cameraButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Camera, target: self, action: "cameraButtonClicked:")
        
        self.moviePlayerController.navigationController?.navigationItem.rightBarButtonItem = cameraButton;
        
        self.moviePlayerController = MPMoviePlayerViewController(contentURL: url);
        self.moviePlayerController.moviePlayer.fullscreen = true;
        self.moviePlayerController.moviePlayer.controlStyle = MPMovieControlStyle.Fullscreen;
        self.moviePlayerController.moviePlayer.prepareToPlay();
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "doneButtonClick:", name: MPMoviePlayerPlaybackDidFinishNotification, object: nil)
    }
    
    override func viewDidAppear(animated: Bool) {
        self.presentMoviePlayerViewControllerAnimated(self.moviePlayerController)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func doneButtonClick(notificacion: NSNotification)
    {
        println("Termino video");
    }
    
    func cameraButtonClicked(sender: UIButton)
    {
        
    }
}

