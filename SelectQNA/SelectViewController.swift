//
//  SelectViewController.swift
//  SelectQNA
//
//  Created by 歐陽橘子 on 2021/2/2.
//

import UIKit

class SelectViewController: UIViewController {

    @IBOutlet weak var countText: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet var answerButton: [UIButton]!
    
    let countString:[String] = ["第一題", "第二題", "第三題", "第四題", "第五題", "第六題", "第七題", "第八題", "第九題", "第十題"]
    
    var lastScore:Int = 0
    var count:Int = 0
    
    var questionList:[QnA] = AddQuestion.init().questionList
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionList.shuffle()
        setQuestion()
    }
    
    func setQuestion(){
        countText.text = countString[count]
        questionText.text = questionList[count].question
        for i in 0...3{
            answerButton[i].setTitle(questionList[count].selectQuestion[i], for: [])
        }
        for index in 0...3 {
            answerButton[index].backgroundColor = UIColor.init(red: 231/255, green: 1, blue: 167/255, alpha: 1)
        }
        
    }
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        let index:Int = answerButton.firstIndex(of: sender) ?? 0
        print(answerButton[index].titleLabel?.text! ?? "")
        print(questionList[count].answer)
        if answerButton[index].titleLabel?.text! ?? "" == questionList[count].answer {
            answerButton[index].backgroundColor = UIColor.green
            lastScore = lastScore + 1
        }else{
            answerButton[index].backgroundColor = UIColor.red
            for i in 0...3 {
                if answerButton[i].titleLabel?.text! ?? "" == questionList[count].answer {
                    answerButton[i].backgroundColor = UIColor.green
                }
            }
        }
    
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.count = self.count + 1
            if self.count == 10 {
                print("do performSegue")
                self.performSegue(withIdentifier: "showResult",
                sender: nil)
            }else{
                self.setQuestion()
            }
        }
    }
    
    @IBSegueAction func showResult(_ coder: NSCoder) -> ScoreViewController? {
        
        let controller = ScoreViewController(coder: coder)
        
        controller?.scoreString = "總共\(count)題\n答對\(lastScore)題"
        
        return controller
    }
    
    override func viewWillLayoutSubviews() {
        
    }
    
    @IBAction func unwindToname(_ unwindSegue: UIStoryboardSegue) {
        questionList.shuffle()
        count = 0
        lastScore = 0
        setQuestion()
    }
}
