//
//  Trainees.swift
//  TeamApp
//
//  Created by Abdulaziz Alfayaa on 23/10/2021.
//

import Foundation

enum ProgramType {
    case Bootcamp
}
class T1000 {
    var programName : String = "Swift/iOS"
    var programType : ProgramType = .Bootcamp
    var programCity : String = "Medina"
    var instructors : [String] = ["Salim", "Aziz"]
    var trainees : [Trainee] = []
    
     func addTrainee(trainee: Trainee) -> Trainee {
        self.trainees.append(trainee)
        return trainee
    }
}

struct Trainee {
    var id : Int
    var name : String
    var email : String
}
