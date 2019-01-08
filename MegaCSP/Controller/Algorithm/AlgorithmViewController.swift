//
//  ViewController.swift
//  AlgorithmSkylerFitzgerald
//
//  Created by Fitzgerald, Skyler on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController
{

    @IBOutlet weak var algorithmText: UILabel!
    @IBOutlet weak var swiftImage: UIImageView!
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatAlgorithm()
    }

    private func formatAlgorithm() -> Void
    {
        let title : String = "How to make an iOS app"
        
        let stepOne : String = "Open up Xcode and click “Create new Xcode project”, you will then be directed to a window with various templates."
        
        let stepTwo : String = "Select “iOS” in the top section of the pop-up if it’s not already selected and click on “Single View App” and hit Next.  It will then ask you to name the project, make sure the name make sense and hit Next, another window will pop-up asking for where you want to create the project, it’s best to create a new folder specifically for iOS project and save it there (make sure you know where it is located for later)"
        
        let stepThree : String = "In the left-hand side of the screen there should be a list of files and folders, almost looks like something from a file explorer.  This area is called the Navigator, it’s where you will open and locate files for your project. In this step we will organize the files based on their purpose.  In the Navigator, Cmd + Left-click the following files: AppDelegate.swift, Assets.xcassets, and Info.plist.  Right-click on the selected files and select “New Group from Selection”, this will create a folder and moves them to that folder.  Rename the folder “Resources”."
        
        let stepFour : String = "Repeat this step again with ViewController.swift being inside a folder labeled “Controller” and Main.storyboard and LaunchScreen.storyboard being inside a folder labeled “View”."
        
        let stepFive : String = "In the Navigator click on the file that has a blueprint icon and should be the same name you used when you created the project, this is the Project file.  On screen the should be a section labeled  Identity click on “Choose Info.plist file...” and select where it is located (it should be in the Resources folder of your project)."
        
        let stepSix : String = "You are now ready to make a app"
        
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix]
        
        let attributesDictionary = [NSAttributedString.Key.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        //loop repeats for each step found in algorithm
        for step in algorithm
        {
            let bullet : String = "🐋"
            let formattedStep : String = "\n\(bullet)  \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedString.Key.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
        
    }
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }


}

