import UIKit
import Nuke

final class EventTableViewCell: UITableViewCell {
    let url = URL(string: "https://ca.slack-edge.com/T02D9RVN1-U6A28G8CS-3e823eba7501-512")!

    func event(_ event: Event) {
        label.text = "\(event.type) by \(event.actor.login) at \(event.repo.name)"
        
        let url = URL(string: "https://ca.slack-edge.com/T02D9RVN1-U6A28G8CS-3e823eba7501-512")!
        Nuke.loadImage(with: url, into: icon)
        // 丸にする
        icon.layer.cornerRadius = icon.frame.size.width * 0.5
        icon.clipsToBounds = true
    }

    @IBOutlet private var label: UILabel!
    @IBOutlet private var descriptionLabel: UILabel!
    @IBOutlet weak var icon: UIImageView!
}
