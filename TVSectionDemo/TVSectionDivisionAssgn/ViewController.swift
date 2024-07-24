import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
   
    @IBOutlet weak var myTableView: UITableView!
    var groups = [String: [String]]()
    var arr = [[String]]()
    var newArr = [[String]]()
    var mycharacters = [Character]()
    var sec = 0
    
    let arrString = ["Onkar","Omkar","Shraddha","Chetan","Sushant","Sushank","Ankur","Siddhesh","Ankush","Janak","Afzal","Kunal","Krunal","Santosh","Tejas","Anuja","Vivek","Pradip","Dinesh", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.separatorStyle = .none
       // myTableView.estimatedRowHeight = 40
        let characters = Array(Set(arrString.flatMap({ $0.characters.first })))
       
        for character in characters.map({ String($0) }) {
            arr.append(arrString.filter({ $0.hasPrefix(character) }))
            //groups[character] = arrString.filter({ $0.hasPrefix(character) })
        }
        newArr = arr.sorted { $0[0] < $1[0] }
     
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //return 50
        return UITableViewAutomaticDimension
    }
    func  ReturnData(index :Int) ->  [[String]] {
       mycharacters = Array(Set(arrString.flatMap({ $0.characters.first })))
       mycharacters.sort()
        arr.removeAll()
    for character in mycharacters.map({ String($0) }) {
    arr.append(arrString.filter({ $0.hasPrefix(character) }))
    //groups[character] = arrString.filter({ $0.hasPrefix(character) })
    }
        newArr = arr.sorted { $0[0] < $1[0] }
        
        // For Straight Selectable Tab
//        if index>=0 {
//            newArr.remove(at: index)
//            newArr.insert(["\(mycharacters[index])"], at: index)
//
//        }
        
        // FOR Reverse Selectable Tab
        var i = 0
        for _ in newArr {
            
            if i != index
            {
                newArr.remove(at: i)
                newArr.insert(["\(mycharacters[i])"], at: i)
            }
            i=i+1
        }
        
    return newArr
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let data = mycharacters[section]
        return "\(data)"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == sec {
            if newArr[section].first?.characters.count == 1{
                return 0
            }
            return newArr[section].count;
        }
        return 0
    }
    
    @IBAction func btnHeaderClicked(_ sender: UIButton) {
        sec = sender.tag;
        ReturnData(index: sec)
        myTableView.reloadData()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let spiderCell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "cell")
//        let myarray = newArr[indexPath.section].sorted()
//        spiderCell.textLabel?.text = newArr[indexPath.section][indexPath.row]
//        return spiderCell

        let myCell = tableView.dequeueReusableCell(withIdentifier: "customTvc") as! MyCustomTvc
        let myarray = newArr[indexPath.section].sorted()
        myCell.lblTitle.text = newArr[indexPath.section][indexPath.row]
        
        return myCell
 
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let myHeaderView = tableView.dequeueReusableCell(withIdentifier: "headerCell") as! MyHeaderView
        let data = newArr[section]
        let data1 = data.first!
        let firchr = data1.characters.first!
        myHeaderView.btnTitle.tag = section
        myHeaderView.btnTitle.setTitle("\(firchr)", for: .normal)
      
        return myHeaderView
    }
    
    
    public func numberOfSections(in tableView: UITableView) -> Int{
        return newArr.count
    }

}


