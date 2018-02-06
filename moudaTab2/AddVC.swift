//
//  AddVC.swift
//  moudaTab2
//
//  Created by cauadc on 2018. 2. 6..
//  Copyright © 2018년 cauadc. All rights reserved.
//

import UIKit

class AddVC: UIViewController, UITextViewDelegate {

    @IBOutlet weak var lineTextView: UITextView!
    @IBOutlet weak var pageTextView: UITextField!
    @IBOutlet weak var thoughtTextView: UITextView!
    @IBAction func selectBookPressed(_ sender: Any) {
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lineTextView.delegate = self
        thoughtTextView.delegate = self
        lineTextView.text = "간직하고 싶은 책 속의 한 문장을 작성해주세요."
        thoughtTextView.text = "기록한 문장에 대한 본인만의 생각이나 감정을 표현해주세요."
        lineTextView.accessibilityIdentifier = "lineText"
        thoughtTextView.accessibilityIdentifier = "thoughtText"
        lineTextView.textColor = UIColor.lightGray
        thoughtTextView.textColor = UIColor.lightGray
        // Do any additional setup after loading the view.

    }
    
    
    // Placeholder text
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.accessibilityIdentifier == "lineText" || textView.accessibilityIdentifier == "thoughtText" {
            if(textView.textColor == UIColor.lightGray) {
                textView.text = nil
                textView.textColor = UIColor.black
            }
        }
        textView.becomeFirstResponder()
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        
        if textView.text.isEmpty {
            textView.textColor = UIColor.lightGray
            if textView.accessibilityIdentifier == "lineText" {
                textView.text = "간직하고 싶은 책 속의 한 문장을 작성해주세요."
            } else if textView.accessibilityIdentifier == "thoughtText" {
                textView.text = "기록한 문장에 대한 본인만의 생각이나 감정을 표현해주세요."
            }
        }
        textView.resignFirstResponder()
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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