//
//  ViewController.swift
//  Süper Kahraman Kitabi
//
//  Created by enes şehirli on 3.02.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var tableView: UITableView!
    
    var superKahramanGorselIsimleri = [String]()
    var superKahramanIsimleri = [String]()
    var secilenIsim = ""
    var secilenGorsel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
       
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Superman")
        superKahramanIsimleri.append("Iron Man")
        superKahramanIsimleri.append("Spiderman")
        superKahramanIsimleri.append("Captain America")
       
//        UIımageViewlada olur
        
        
       
        superKahramanGorselIsimleri.append("batman")
        superKahramanGorselIsimleri.append("superman")
        superKahramanGorselIsimleri.append("ironman")
        superKahramanGorselIsimleri.append("spiderman")
        superKahramanGorselIsimleri.append("captainamerica")
        
        
    }

    
//    nuberOfrowsInSecction -> kaç tane row olucak
//    cellForow atIndexPath -> Hücrenin içerisinde neeler gösterilecek
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superKahramanIsimleri.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superKahramanIsimleri[indexPath.row]
    return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            superKahramanGorselIsimleri.remove(at: indexPath.row)
            
            superKahramanIsimleri.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenIsim = superKahramanIsimleri[indexPath.row]
        secilenGorsel = superKahramanGorselIsimleri[indexPath.row]
            
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    
    };override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenKahramanIsmi = secilenIsim
            destinationVC.secilenKahramanGorselIsmi = secilenGorsel
        }
    }
    
    
}

