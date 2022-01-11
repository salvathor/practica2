//
//  ViewController.swift
//  practica2
//
//  Created by Salvador Lopez on 10/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var contactos = [ Contacto(nombre: "Salvador", edad: 33, parentesco: .Padre), Contacto(nombre: "Arlen", edad: 33, parentesco: .Madre) ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = "\(contactos[indexPath.row].nombre), edad: \(contactos[indexPath.row].edad)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("se ha seleccionado \(contactos[indexPath.row].nombre) en la tabla")
        if let vcd = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC2") as? ViewController2{
            vcd.contactoDetail = contactos[indexPath.row]
            vcd.view.backgroundColor = UIColor.orange
            self.present(vcd, animated: true) {
                print("Done!")
            } // Adjuntar la vista actual al controller actual.
            //self.navigationController?.pushViewController(vcd, animated: true) // Adjuntar la vista actual al navigation controller.
        }
    }
    
}

