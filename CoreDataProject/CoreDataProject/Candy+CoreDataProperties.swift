//
//  Candy+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Oluwapelumi Williams on 25/09/2023.
//
//

import Foundation
import CoreData


extension Candy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Candy> {
        return NSFetchRequest<Candy>(entityName: "Candy")
    }

    @NSManaged public var name: String?
    @NSManaged public var origin: Country?
    
    // wrapping the name property so that it always returns a String
    public var wrappedName: String {
        name ?? "Unknown Candy"
    }
    

}

extension Candy : Identifiable {

}
