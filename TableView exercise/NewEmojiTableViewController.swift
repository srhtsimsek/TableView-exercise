
import UIKit

class NewEmojiTableViewController: UITableViewController {

    @IBOutlet weak var newSymbolLabel: UITextField!
    @IBOutlet weak var newNameLabel: UITextField!
    @IBOutlet weak var newUsageLabel: UITextField!
    @IBOutlet weak var newDescriptionLabel: UITextField!
    
    var emoji: Emoji?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let emoji = emoji {
            newSymbolLabel.text = emoji.symbol
            newNameLabel.text = emoji.name
            newUsageLabel.text = emoji.usage
            newDescriptionLabel.text = emoji.description
        }
    }
    @IBAction func saveButton(_ sender: Any) {
    }
    
    @IBAction func cancelButton(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "saveUnwind" else { return }
        let symbol = newSymbolLabel.text!
        let name = newNameLabel.text!
        let usage = newUsageLabel.text!
        let description = newDescriptionLabel.text!
        
        emoji = Emoji(symbol: symbol, name: name, description: description, usage: usage)
        
    }
}
