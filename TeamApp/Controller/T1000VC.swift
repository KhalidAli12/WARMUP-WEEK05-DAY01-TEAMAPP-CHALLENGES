//
//  T1000VC.swift
//  TeamApp
//
//  Created by Abdulaziz Alfayaa on 23/10/2021.
//

import UIKit

class T1000VC: UIViewController {
    var swiftTeam = T1000()
    
    @IBOutlet var programName: UILabel!
    @IBOutlet var programType: UILabel!
    @IBOutlet var programCity: UILabel!
    @IBOutlet var traineesCount: UILabel!
    @IBOutlet var instructorsCount: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        updateSwiftTeamUI()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateSwiftTeamUI()
    }
    
    func updateSwiftTeamUI(){
        programName.text = swiftTeam.programName
        programType.text = "\(swiftTeam.programType)"
        programCity.text = swiftTeam.programCity
        traineesCount.text = "\(swiftTeam.trainees.count)"
        instructorsCount.text = "\(swiftTeam.instructors.count)"
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "addTraineeSegue" {
        let addTraineeVC = segue.destination as! AddTraineeVC
        addTraineeVC.swiftTeam = self.swiftTeam
        } else {
            let tableVC = segue.destination as! TableVC
            tableVC.swiftTeam = self.swiftTeam
        }
    }

}
