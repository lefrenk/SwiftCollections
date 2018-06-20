import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!

    @IBAction func showSynonyms(_ sender: UIButton) {
        guard let text = textField.text, textField.text!.count > 0 else {
            // Let's make sure textField.text has value
            return
        }

        if let results = getSynonyms(for: text.lowercased()) {
            textView.text = results.joined(separator: "\n")
        } else {
            textView.text = "\(text) not found in thesaurus"
        }
    }
    
}
