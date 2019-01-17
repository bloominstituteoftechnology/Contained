//
//  NotesTableViewController.swift
//  Lambda Notes
//
//  Created by Diante Lewis-Jolley on 1/10/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class NotesTableViewController: UITableViewController {

    @IBOutlet weak var textView: UITextView!
    @IBAction func saveButtonTapped(_ sender: Any) {
        NotesController.shared.createNote(withText: text)
        textView.text = nil
    }



    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    // MARK: - Navigation

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell", for: indexPath)

        let notes = NotesController.shared.notes
        let note =  notes[indexPath]
        cell.textLabel!.text = note.text
        return cell
    }
   override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else { return }
    NotesController.shared.delete(note: note)
    tableView.reloadData()
    }
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}
