//
//  AddTraineeVC.swift
//  TeamApp
//
//  Created by Abdulaziz Alfayaa on 23/10/2021.
//

import UIKit

class AddTraineeVC: UIViewController {
    var swiftTeam : T1000!
    
    @IBOutlet var idField: UITextField!
    @IBOutlet var nameField: UITextField!
    @IBOutlet var emailField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        idField.keyboardType = .numberPad
        emailField.keyboardType = .emailAddress
    }
    
    @IBAction func addBtnPressed(_ sender: Any) {
        if (!idField.text!.isEmpty &&  !nameField.text!.isEmpty &&  !emailField.text!.isEmpty) {
            guard let team = swiftTeam else {
                return showErrorAlert("Cannot access 'swiftTeam' instance")
            }
            let newTrainee = team.addTrainee(trainee: Trainee(id: Int(idField.text!)!, name: nameField.text!, email: emailField.text!))
            print("Welcome to new team member \(newTrainee.name) 🎈🥳")
            navigationController?.popViewController(animated: true)
        } else {
            showErrorAlert("Fields cannot be empty")
        }
    }
    
    func showErrorAlert(_ errorMessage: String) {
        let alertError = UIAlertController(title: "Failed", message: errorMessage, preferredStyle: .alert)
        alertError.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
        self.present(alertError, animated: true, completion: nil)
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
