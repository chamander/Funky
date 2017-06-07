
struct Model {

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

  static var all: [Model] {
    return [foo, bar, baz, qux, xyzzy, fred, garply]
  }

  private static let foo: Model =
    Model(id: 1, title: "Lt.", name: "Michael Loo", details: "A dude. Rides a bicycle.", gender: .male, age: 26)

  private static let bar: Model =
    Model(id: 2, title: "Ms", name: "Jenny Galino", details: "Developer lady. Does git gud.", gender: .female, age: 22)

  private static let baz: Model =
    Model(id: 3, title: "Squire", name: "Gavan Chan", details: "Some random.", gender: .male, age: nil)

  private static let qux: Model =
    Model(id: 4, title: "Lady", name: "Charlie Mathew", details: "Organiser of stuff. Mashes keyboards.", gender: .female, age: 21)

  private static let xyzzy: Model =
    Model(id: 5, title: "Sir", name: "John Wisolith", details: "Sharp guy. Types on a keyboard.", gender: .male, age: 25)

  private static let fred: Model =
    Model(id: 6, title: "n0ob", name: "Andy Chen", details: "A noob. Gets people sick.", gender: .male, age: 23)

  private static let garply: Model =
    Model(id: 7, title: "Mr", name: "Tim Korotky", details: "Tall dude. Does some developing.", gender: .male, age: 24)

}
