//
//  MainTableViewController.swift
//  Tablas
//
//  Created by Omar on 09/12/21.
//  Copyright © 2021 Omar. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    //Mark: - Variables
    
    private var arrayBeberages: [String] = [ ]
    private var arrayFood : [String] = [ ]
    
    //Mark: - Lifecyclie
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Bebidas"
        arrayBeberages = ["Cafe", "Agua", "Leche", "Licuado", "Refresco", "Vino", "Tequila",
        "Beileys", "Cerveza", "Whiskey", "Té",]
        
        //Las tablas tienen dos importantes protocolos a cumplir:
        //-Delegate: Define las acciones a ejecutar cuando el usuario interactua con la tabl
        //- Data Source: Sirve para establecer la informacion a mostrar en la tabla
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    } //cuantas secciones de una tabla vamos a mostrar

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return arrayBeberages.count
        } else {
            return arrayFood.count
        }
    } //numero de celdas

    // cellForRowAt indexPath: la celda a mostrar en una ubicacion
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let cell : UITableViewCell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        
        if indexPath.section == 0 {
            cell.textLabel?.text = arrayBeberages[indexPath.row]
        } else{
            cell.textLabel?.text = arrayFood[indexPath.row]
        }
        // Configure the cell...

        return cell
    }
    

    //Mark: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("Se preciono seccion: \(indexPath.section) and row: \(indexPath.row)")
        
        if indexPath.section == 0 {
            print(arrayBeberages[indexPath.row])
        }else {
            print(arrayFood[indexPath.row])
        }
    } //Se detona cuando ya fuue seleccionada una celda en cierta ubicación

}
