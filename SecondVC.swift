
import UIKit

protocol SecondVCDelegate: AnyObject {
    func didAddCompany(name: String, text: String)
}

class SecondVC: UIViewController {

    @IBOutlet weak var SecondView: UIView!
    @IBOutlet weak var companyNameTextField: UITextField!
    @IBOutlet weak var companyTextField: UITextField!

    weak var delegate: SecondVCDelegate?

    override func viewDidLoad() {
    super.viewDidLoad()
    }

    @IBAction func saveButtonTapped(_ sender: UIButton) {
    if let companyName = companyNameTextField.text, let companyText = companyTextField.text {
    delegate?.didAddCompany(name: companyName, text: companyText)
    navigationController?.popViewController(animated: true)
    }
    }
    }
