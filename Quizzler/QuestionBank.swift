//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Hardik Shah on 7/28/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank{
    
    var list = [Question]();
    
    init(){
        
        let item = Question(givenQuestion: "Valentine\'s day is banned in Saudi Arabia.", givenAns: true)
        list.append(item)

        list.append(Question(givenQuestion: "A slug\'s blood is green.", givenAns: true))
        
        list.append(Question(givenQuestion: "Approximately one quarter of human bones are in the feet.", givenAns: true))
        
        list.append(Question(givenQuestion: "The total surface area of two human lungs is approximately 70 square metres.", givenAns: true))
        
        list.append(Question(givenQuestion: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", givenAns: true))
        
        list.append(Question(givenQuestion: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", givenAns: false))
        
        list.append(Question(givenQuestion: "It is illegal to pee in the Ocean in Portugal.", givenAns: true))
        
        list.append(Question(givenQuestion: "You can lead a cow down stairs but not up stairs.", givenAns: false))
        
        list.append(Question(givenQuestion: "Google was originally called \"Backrub\".", givenAns: true))
        
        list.append(Question(givenQuestion: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", givenAns: true))
        
        list.append(Question(givenQuestion: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", givenAns: false))
        
        list.append(Question(givenQuestion: "No piece of square dry paper can be folded in half more than 7 times.", givenAns: false))
        
        list.append(Question(givenQuestion: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", givenAns: true))
        
    }
    
}
