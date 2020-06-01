import Foundation
import UIKit

@objc protocol CityCellProtocol: class {
    func buttonClicked()
}

@objc public class CityCell: UITableViewCell {
    @IBOutlet var cityImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showMore: UIButton!

   @objc var delegate: CityCellProtocol!
    
    @objc public func setup (with city: CityModel) {
        titleLabel.text = city.name
        
    }
    
    @IBAction func buttonClicked(_sender: UIButton) {
        delegate.buttonClicked()
    }
}
