import Foundation

struct Features:Decodable {
    var properties:Properties
    var geometry:Geometry
}

struct Properties:Decodable, Hashable {
    var mag:Double
    var place:String
    var time:Double
    var detail:String
    var title:String
}

struct Geometry:Decodable {
    var type:String
    var coordinates:[Double]
}

struct QuakeAPIList:Decodable {
    var features:[Features]
}
