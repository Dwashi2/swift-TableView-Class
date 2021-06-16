//
//  ViewController.swift
//  TableView
//
//  Created by Daniel Washington Ignacio on 15/06/21.
//

import UIKit


enum Section: Int{
    case carros = 0
    case motos = 1
}

class ViewController: UIViewController {

    
    let arrMoto:[String] = ["Ducati", "Honda"]
    let arrCarro:[String] = ["Mitsubishi", "Jeep","Mazda","Fiorino","Gol"]
    let arrCarros: Carros = Carros(nome: ["Mitsubishi Lan", "Jeep Rene","Mazda","Fiorino","Gol"])
    let arrMotos: Motos = Motos(nome: ["Ducati 1198", "Honda"])
    
    
    @IBOutlet weak var myTableView: UITableView!
    
   
    var arrayCarros: [String] = ["civic","X2", "320i", "jaguar", "C180"]
    var arrayMotos: [String] = ["Ducati Senna", "R1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        
        
        
        // Do any additional setup after loading the view.
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
    
//        switch section {
//        case 0:
//            return 5
//        case 1:
//            return 2
//        default:
//            return 0
//        }
        
        switch section {
        case Section.carros.rawValue:
            return self.arrayCarros.count
        case Section.motos.rawValue:
            return self.arrayMotos.count
        default:
            return 0
        }
        
        
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
//        switch section {
//        case 0:
//            return "Carros"
//        case 1:
//            return "Motos"
//        default:
//            return ""
//        }
//
        
        switch section {
        case Section.carros.rawValue:
            return "Carros"
        case Section.motos.rawValue:
            return "Motos"
        default:
            return ""
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       
        
        if indexPath.section == Section.carros.rawValue {
            cell.textLabel?.text = self.arrayCarros[indexPath.row]
        }
        else{
            cell.textLabel?.text = self.arrayMotos[indexPath.row]
        }
        
      //  cell.textLabel?.text = String(indexPath.row)
      //  cell.detailTextLabel?.text = "Dwashi2"
        
        
//        switch indexPath.row {
//        case 0:
//            if indexPath.section == 0 {
//                cell.textLabel?.text = arrCarros.nome[0]
//            }else{
//                cell.textLabel?.text = arrMotos.nome[0]
//            }
//        case 1:
//            if indexPath.section == 0 {
//                cell.textLabel?.text = arrCarros.nome[1]
//            }else{
//                cell.textLabel?.text = arrMoto[1]
//            }
//        case 2:
//            cell.textLabel?.text = arrCarro[2]
//        case 3:
//            cell.textLabel?.text = arrCarro[3]
//        case 4:
//            cell.textLabel?.text = arrCarro[4]
//        default:
//            cell.textLabel?.text = "default case"
//        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == Section.carros.rawValue {
            print(self.arrayCarros[indexPath.row])
        }
        else{
            print(self.arrayMotos[indexPath.row])
        }
        
    }
    
    
}

