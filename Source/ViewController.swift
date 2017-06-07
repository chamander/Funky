
final class ViewController: UIViewController {

  override func viewDidLoad() {
    displayNext()
  }

  @IBOutlet private var idLabel: UILabel!
  @IBOutlet private var titleAndNameLabel: UILabel!
  @IBOutlet private var detailsLabel: UILabel!
  @IBOutlet private var genderAndAgeLabel: UILabel!

  private let data: Array = Model.all
  private var iterator: IndexingIterator<[Model]>?

  @IBAction private func userDidTapNextButton() {
    displayNext()
  }

  private func displayNext() {
    if let model: Model = iterator?.next() {
      display(model)
    } else {
      refreshData() { self.displayNext() }
    }
  }

  private func refreshData(completionHandler handler: @escaping () -> Void) {
    iterator = data.makeIterator()
    handler()
  }

  private func display(_ data: Model) {
    idLabel.text = "ID: \(data.id)"
    titleAndNameLabel.text = "Name: \(data.title) \(data.name)"
    detailsLabel.text = String(describing: data.details)
    if let age: UInt8 = data.age {
      genderAndAgeLabel.text = "Gender: \(data.gender). Age: \(age)."
    } else {
      genderAndAgeLabel.text = "Gender: \(data.gender). Age: Ancient."
    }
  }

}

import UIKit
