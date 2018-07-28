//
//  Question.swift
//  Quizzler
//
//  Created by Hardik Shah on 7/28/18.
//  
//

import Foundation

class Question{
    
    let question: String;
    let answer: Bool;
    
    init(givenQuestion: String, givenAns: Bool) {
        question = givenQuestion;
        answer = givenAns;
    }
    
}
