//
//  Task.swift
//  Scavenger Hunt
//
//  Created by Jasmine Jahan on 3/17/23.
//

import Foundation


import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Favorite Local Restaurant",
                 description: "Where do you wanna go?"),
            Task(title: "Favorite Local Cafe",
                 description: "What is your review?"),
            Task(title: "Go-to brunch place?",
                 description: "Which item do you like?"),
            Task(title: "Hiking place?",
                 description: "Which time do you suggest?")
        ]
    }
}

