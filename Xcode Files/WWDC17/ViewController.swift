//
//  ViewController.swift
//  WWDC17
//
//  Created by Waseef Akhtar on 3/30/17.
//  Copyright © 2017 Waseef Akhtar. All rights reserved.
//

import UIKit
import LTMorphingLabel

class ViewController: UIViewController, LTMorphingLabelDelegate {

    @IBOutlet weak var animatedLabel: LTMorphingLabel!
    
    var player: AVPlayer?

    fileprivate var i = -1
    fileprivate var j = -1
    
    fileprivate var textArray = [
        "Technology alone is not enough", "Technology must intersect with the liberal arts and the humanities", "To create new ideas and experiences", "That push society forward",
        "This summer", "We bring together", "Thousands of brilliant minds",
        "Representing many diverse", "Perspectives", "Passions",
        "And talents", "To help us change the world",
        "Get the in-depth technical details", "You need to build", "The next generation of apps", "Using newly announced Apple technologies", "Learn more about", "Implementing new technologies into your code", "With expert advice from Apple engineers", "In a collaborative group setting", "Make an appointment with Apple experts", "For personal one-on-one help on", "User interface design", "App distribution", "Marketing", "Analytics", "And more", "Enjoy your lunch", "While watching engaging and entertaining talks", "Given by industry experts and luminaries", "Meet with like-minded developers", "And Apple experts", "For engaging and motivating conversations around specific topics", "New this year are Women@WWDC breakfast Get Togethers", "Take advantage of a full week of exciting experiences around the city", "Including third-party events", "And an incredible bash on Thursday", "Welcome to WWDC17", "June 5-9"
    ]
    
    fileprivate var colorArray = [
        UIColor(red: 214/255, green: 44/255, blue: 72/255, alpha: 1.0),
        UIColor(red: 42/255, green: 176/255, blue: 206/255, alpha: 1.0),
        UIColor(red: 31/255, green: 169/255, blue: 149/255, alpha: 1.0),
        UIColor(red: 225/255, green: 169/255, blue: 49/255, alpha: 1.0),
        UIColor(red: 58/255, green: 93/255, blue: 111/255, alpha: 1.0),
        UIColor(red: 230/255, green: 78/255, blue: 69/255, alpha: 1.0),
        UIColor(red: 60/255, green: 60/255, blue: 60/255, alpha: 1.0)
    ]
    
    fileprivate var text: String {
        i = i >= textArray.count - 1 ? 0 : i + 1
        return textArray[i]
    }
    
    fileprivate var color: UIColor {
        j = j >= colorArray.count - 1 ? 0 : j + 1
        return colorArray[j]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        animatedLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        animatedLabel.numberOfLines = 0
        animatedLabel.textColor = UIColor.white
        animatedLabel.delegate = self
        animatedLabel.text = text
        
        self.view.backgroundColor = color
        
        animatedLabel.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.labelTapped))
        animatedLabel.addGestureRecognizer(gestureRecognizer)
    }
    
    func labelTapped(sender: UITapGestureRecognizer) {
        changeText(sender)
        changeColor(sender)

    }
    
    func changeText(_ sender: AnyObject) {
        animatedLabel.text = text
    }
    
    func changeColor(_ sender: AnyObject) {
        self.view.backgroundColor = color

    }
    
}

