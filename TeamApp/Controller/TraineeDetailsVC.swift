//
//  TraineeDetailsVC.swift
//  TeamApp
//
//  Created by Abdulaziz Alfayaa on 24/10/2021.
//

import UIKit

class TraineeDetailsVC: UIViewController {
    var traineeDetails: Trainee?
    
    @IBOutlet var traineeEmailLabel: UILabel!
    @IBOutlet var traineeNameLabel: UILabel!
    @IBOutlet var traineeIDLabel: UILabel!
    

    override func viewWillAppear(_ animated: Bool) {
        traineeIDLabel.text = "\(traineeDetails?.id ?? 0)"
        traineeNameLabel.text = traineeDetails?.name
        traineeEmailLabel.text = traineeDetails?.email
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
