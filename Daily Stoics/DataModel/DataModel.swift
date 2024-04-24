//
//  DataModel.swift
//  Daily Stoics
//
//  Created by Irodakhon Umurzakova on 20/04/24.
//

import Foundation
struct MotivationModel: Identifiable{
    var id = UUID()
    var image:String
    var titel:String
    var font:String
    
}
var Quotes:[MotivationModel] = [
    MotivationModel(image: "m1", titel:"Fall seven times,stand up eight", font: "Avenir"),
    MotivationModel(image: "m2", titel:"Small changes consistently applied lead to big improvements", font: "Didot"),
    MotivationModel(image: "m3", titel:"The happiness of your life depends upon the quality of your thoughts", font: "American Typewriter"),
    MotivationModel(image: "m4", titel:"Without commitment you will never start.WIthout consistency you will never begin", font: "Future"),
    MotivationModel(image: "m5", titel:"You were born with wings,why prefer to crawl through life!?", font: "Times New Roman"),
    MotivationModel(image: "m6", titel:"He who has health has hope,and he who has hope has everything", font: "Arial")
    
]
var InspirationQuotes:[MotivationModel] = [
    MotivationModel(image: "m1", titel:"The journey of a thousand miles begins with one step", font: "Avenir"),
    MotivationModel(image: "m2", titel:"Without commitment you will never start.WIthout consistency you will never begin", font: "Didot"),
    MotivationModel(image: "m3", titel:"You were born with wings,why prefer to crawl through life!?", font: "American Typewriter"),
    MotivationModel(image: "m4", titel:"THe who has health has hope,and he who has hope has everything", font: "Future"),
    MotivationModel(image: "m5", titel:"Fall seven times,stand up eight", font: "Times New Roman"),
    MotivationModel(image: "m6", titel:"The happiness of your life depends upon the quality of your thoughts", font: "Arial")
]
struct fontmodel:Identifiable{
    var id = UUID()
    var fontname:String
}

var fontsA:[fontmodel] = [fontmodel(fontname: "Avenir"),
                          fontmodel(fontname: "Didot"),
                          fontmodel(fontname: "American Typewriter"),
                          fontmodel(fontname: "Chalkboard SE"),
                          fontmodel(fontname: "American Typewriter"),
                          fontmodel(fontname: "Times New Roman"),
                          fontmodel(fontname: "Arial"),
                          fontmodel(fontname: "Verdana"),
                          fontmodel(fontname: "Georgia"),
                          fontmodel(fontname: "Future"),

]
