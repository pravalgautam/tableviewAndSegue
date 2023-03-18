//
//  ViewController.swift
//  tableviewswify
//
//  Created by Praval Gautam on 18/03/23.
//

import UIKit

class ViewController: UITableViewController {

    let student = [
        students(name: "praval", age: "two"),
        students(name: "raveesh ", age: "one"),
        students(name: "akhilesh babu", age: "happy birthday"),
      
       
        
    ]



    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return student.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecollege", for: indexPath)
        cell.textLabel?.text = student[indexPath.row].name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DataSegue" {
            if let destination = segue.destination as? PdViewController{
                destination.student = student[tableView.indexPathForSelectedRow!.row]
            }
        }
    }
}



