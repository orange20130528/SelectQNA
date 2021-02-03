//
//  QnA.swift
//  SelectQNA
//
//  Created by 歐陽橘子 on 2021/2/2.
//

import Foundation

class QnA {
    var question:String
    var selectQuestion:[String]
    var answer:String
    
    internal init(question: String, selectQuestion: [String], answer: String) {
        self.question = question
        self.selectQuestion = selectQuestion
        self.answer = answer
    }
}
