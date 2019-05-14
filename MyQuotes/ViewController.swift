//
//  ViewController.swift
//  MyQuotes
//
//  Created by Techninier on 10/05/2019.
//  Copyright © 2019 byProgrammers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlet
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nextQuoteButton: UIButton!
    
    // MARK: - Properties
    
    var quotes: [String] = [
        "It does not matter how slowly you go as long as you do not stop.",
        "The Way Get Started Is To Quit Talking And Begin Doing.",
        "The Pessimist Sees Difficulty In Every Opportunity. The Optimist Sees Opportunity In Every Difficulty.",
        "Don’t Let Yesterday Take Up Too Much Of Today.",
        "You Learn More From Failure Than From Success. Don’t Let It Stop You. Failure Builds Character.",
        "It’s Not Whether You Get Knocked Down, It’s Whether You Get Up.",
        "If You Are Working On Something That You Really Care About, You Don’t Have To Be Pushed. The Vision Pulls You.",
        "People Who Are Crazy Enough To Think They Can Change The World, Are The Ones Who Do.",
        "Failure Will Never Overtake Me If My Determination To Succeed Is Strong Enough.",
        "We May Encounter Many Defeats But We Must Not Be Defeated."
    ]
    
    var colours: [UIColor] = [
        UIColor(red:1.00, green:0.00, blue:0.00, alpha:1.0),
        UIColor(red:0.98, green:0.00, blue:1.00, alpha:1.0),
        UIColor(red:0.00, green:0.10, blue:1.00, alpha:1.0),
        UIColor(red:0.00, green:0.64, blue:1.00, alpha:1.0),
        UIColor(red:1.00, green:0.60, blue:0.00, alpha:1.0)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.initialSetup()
        
    }
    
    // MARK: - Button action
    
    @IBAction func nextQuoteTouchUpInside(_ sender: Any) {
        self.quoteLabel.text = self.quotes.randomElement()
        self.view.backgroundColor = self.colours.randomElement()
    }
    
    
    // MARK: - Setup
    
    func initialSetup() {
        
        // View
        self.view.backgroundColor = self.colours.randomElement()
        
        // Label
        self.quoteLabel.text = self.quotes.randomElement()
        
        // Button
        self.nextQuoteButton.layer.shadowColor = UIColor.black.cgColor
        self.nextQuoteButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        self.nextQuoteButton.layer.shadowRadius = 5
        self.nextQuoteButton.layer.shadowOpacity = 0.5
        
        
    }


}

