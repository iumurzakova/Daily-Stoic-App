//
//  CoredataDataModel.swift
//  Daily Stoics
//
//  Created by Irodakhon Umurzakova on 20/04/24.
//

import Foundation
import CoreData
class CoredataDataModel:ObservableObject{
    @Published var Motivationitems:[MotivationEntity] = []
    let container:NSPersistentContainer
    init(){
        container = NSPersistentContainer(name: "CoreDataModel")
        container.loadPersistentStores {(descrip,error) in
        
        if let error = error {
            print("error loading data \(error)")
          }
        }
        fetchData()
     }
    func saveData(){
        do{
            try container.viewContext.save()
        }catch{
            print("Error saving context\(error)")
        }
    }
    func fetchData(){
        let request = NSFetchRequest<MotivationEntity>(entityName: "MotivationEntity")
        do{
            Motivationitems = try container.viewContext.fetch(request)
        }catch let error {
            print("fetchingData\(error)")
        }
    }
    func addnewQuote(quote:String,image:String,font:String){
        let newQuote = MotivationEntity(context: container.viewContext)
        newQuote.quote = quote
        newQuote.image = image
        newQuote.font = font
        saveData()
        fetchData()
    }
 }
