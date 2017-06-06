
struct Data {

  enum Gender: CustomStringConvertible {
    case female
    case other
    case male

    var description: String {
      switch self {
      case .female:
        return "Female"
      case .other:
        return "Other"
      case .male:
        return "Male"
      }
    }
  }

  let id: UInt64
  let title: String
  let name: String
  let details: String
  let gender: Gender
  let age: UInt8?

  static let foo: Data =
    Data(id: 1, title: "Mr", name: "Tim Korotky", details: "Tall dude. Does some developing.", gender: .male, age: 24)

  static let bar: Data =
    Data(id: 2, title: "Sir", name: "John Wisolith", details: "Sharp guy. Types on a keyboard.", gender: .male, age: 25)

  static let baz: Data =
    Data(id: 3, title: "Lt.", name: "Michael Loo", details: "A dude. Rides a bicycle.", gender: .male, age: 26)

  static let qux: Data =
    Data(id: 4, title: "Lady", name: "Charlie Mathew", details: "Organiser of stuff. Mashes keyboards.", gender: .female, age: 21)

  static let xyzzy: Data =
    Data(id: 5, title: "Ms", name: "Jenny Galino", details: "Developer lady. Does git gud.", gender: .female, age: 22)

  static let fred: Data =
    Data(id: 6, title: "Squire", name: "Gavan Chan", details: "Some random.", gender: .male, age: nil)

  static let garply: Data =
    Data(id: 7, title: "n0ob", name: "Andy Chen", details: "A noob. Gets people sick.", gender: .male, age: 23)

}
