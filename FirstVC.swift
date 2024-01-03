
import UIKit

class FirstVC: UIViewController,UITableViewDelegate,UITableViewDataSource, SecondVCDelegate {

    @IBOutlet weak var FirstView: UIView!
    @IBOutlet weak var tableView: UITableView!
    var dataArray: [String] = []

    override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
    }

    @IBAction func addButtonTapped(_ sender: UIButton) {
    if let secondVC = storyboard?.instantiateViewController(withIdentifier: "idSecondVC") as? SecondVC{
    secondVC.delegate = self
    navigationController?.pushViewController(secondVC, animated: true)
        }
    }

    func didAddCompany(name: String, text: String) {
    dataArray.append ("Company Name: \(name), Company Address: \(text)")
    tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
    cell.textLabel?.text = dataArray[indexPath.row]
    return cell
        }
    }
