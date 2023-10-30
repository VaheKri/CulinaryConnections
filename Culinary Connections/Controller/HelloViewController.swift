import UIKit

class HelloViewController: UIViewController {
    
    @IBOutlet weak var registerButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var topLeftImage: UIImageView!
    
    @IBOutlet weak var topRightImage: UIImageView!
    
    @IBOutlet weak var bottomLeftImage: UIImageView!
    
    @IBOutlet weak var bottomRightImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtons()
        setupImages()
    }
    
    private func setupButtons() {
        registerButton.layer.cornerRadius = 22.5
        registerButton.layer.shadowColor = CustomColors.lavenderMist.cgColor
        registerButton.layer.shadowOpacity = 0.5
        registerButton.layer.shadowOffset = CGSize(width: 3, height: 3)
        
        loginButton.layer.cornerRadius = 22.5
        loginButton.layer.borderWidth = 3
        loginButton.layer.borderColor = CustomColors.lavenderMist.cgColor
    }
    
    private func setupImages() {
        topLeftImage.layer.cornerRadius = 16
        topLeftImage.layer.borderWidth = 5
        topLeftImage.layer.borderColor = CustomColors.lavenderMist.cgColor
        
        topRightImage.layer.cornerRadius = 16
        topRightImage.layer.borderWidth = 5
        topRightImage.layer.borderColor = CustomColors.slateBlue.cgColor
        
        bottomLeftImage.layer.cornerRadius = 16
        bottomLeftImage.layer.borderWidth = 5
        bottomLeftImage.layer.borderColor = CustomColors.slateBlue.cgColor
        
        bottomRightImage.layer.cornerRadius = 16
        bottomRightImage.layer.borderWidth = 5
        bottomRightImage.layer.borderColor = CustomColors.lavenderMist.cgColor
    }
}
