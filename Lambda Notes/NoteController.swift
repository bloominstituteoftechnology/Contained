//
//  NoteController.swift
//  Lambda Notes
//
//  Created by Diante Lewis-Jolley on 1/10/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation
class NotesController {
static let shared = NotesController()
    private init(){}

    func createNote(withText text: String) {
        let note = Note(text: text, timeStamp: Date())
        notes.append(note)
    }
    func delete(note: Note) {
        guard let index = notes.index(of: note) else { return }
        notes.remove(at: index)
       
    }


    private(set) var notes = [Note]()
}
