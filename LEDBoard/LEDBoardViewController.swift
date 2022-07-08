//
//  BoardViewController.swift
//  LEDBoard
//
//  Created by 박종환 on 2022/07/06.
//

import UIKit

class LEDBoardViewController: UIViewController {

    @IBOutlet weak var userInputTextField: UITextField!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
   
    @IBOutlet var buttonList: [UIButton]!
    @IBOutlet weak var upView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designTextField()
        designButton(sendButton, "전송", highlightedTitle: "빨리보내!", bgColor: .yellow)
        designButton(textColorButton, "색깔", highlightedTitle: "색깔", bgColor: .blue)
    }
    
    // buttonOutletVariableName: 외부 매개변수, Argument Label -> 생략 가능
    // buttonName: 내부 매개변수, Parameter Name
    // _ : 와일드 카드 식별자
    func designTextField() {
        userInputTextField.placeholder = "내용을 작성해주세요"
        userInputTextField.text = "안녕하세요?"
        userInputTextField.keyboardType = .emailAddress
        userInputTextField.font = .systemFont(ofSize: 15)
        userInputTextField.borderStyle = .none
        userInputTextField.textColor = .blue
    }
    func designButton(_ buttonName: UIButton,_ buttonTitle: String, highlightedTitle: String, bgColor: UIColor) {
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(highlightedTitle, for: .highlighted)
        buttonName.backgroundColor = bgColor
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
    }
    func studyOutletCollection() {
        //1. 반복문
        let buttonArray: [UIButton] = [sendButton, textColorButton]
        
        for item in buttonArray {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
        
        //2. 아웃렛 컬렉션
        for item in buttonList {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
    }

    @IBAction func sendButtonClicked(_ sender: UIButton) {
        
        resultLabel.text = userInputTextField.text
        
    }
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
//        if(upView.isHidden == false){
//            upView.isHidden = true
//        } else {
//            upView.isHidden = false
//        }
//        upView.isHidden.toggle()

    }
    @IBAction func didEndOnExitAction(_ sender: UITextField) {
//        view.endEditing(true)
    }
    @IBAction func editingEndAction(_ sender: UITextField) {
    }
    
    //연결관계를 다 끊은 후 Any로 연결
    
}
