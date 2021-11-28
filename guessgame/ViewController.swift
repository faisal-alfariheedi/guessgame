//
//  ViewController.swift
//  guessgame
//
//  Created by faisal on 23/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numg: UITextField!
    var g = Int.random(in: 0...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sub(_ sender: UIButton) {
        var mes = ""
        var al = ""
        var i = Int(numg.text!) ?? 0
        if(i == g){mes = "\(i) was correct"; al = "Correct"} else if(i > g){mes = "\(i) is Too high"; al = "Wrong"} else { mes = "\(i) is Too low"; al = "Wrong"}
        let alert = UIAlertController(title: al, message: mes, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Guess Again", style: .default, handler: { [self] action in
            switch action.style{
                case .default:
                    self.numg.text=""
                    if(al.contains("rrect")){self.g=Int.random(in: 0...100)}
                
                case .cancel:
                print("cancel")
                
                case .destructive:
                print("destructive")
                
                @unknown default:
                    print("")
            }
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
}

