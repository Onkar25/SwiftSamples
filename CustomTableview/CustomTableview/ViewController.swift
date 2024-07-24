import UIKit

class ViewController: UIViewController , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myTableViewCell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CustomTVC
       // myTableViewCell.lblHeader.text = "Testing \(indexPath.row+1)"
        myTableViewCell.lblProfileName.text = "Onkar Murkar"
             myTableViewCell.lblProfileName.font = UIFont.boldSystemFont(ofSize: 20)
        myTableViewCell.lblPost.text = "I am learning iOS Swift in Try Catch Institute from today morning 9.30 am onwards"
    
        return myTableViewCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

