import UIKit

class GradientView: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)

        // Créez un dégradé radial
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds

        let color0 = UIColor(red: 59/255, green: 38/255, blue: 92/255, alpha: 0.8)
        let color1 = UIColor(red: 33/255, green: 27/255, blue: 54/255, alpha: 1.0)
        gradientLayer.colors = [color0.cgColor, color1.cgColor]

        gradientLayer.type = .radial

        gradientLayer.startPoint = CGPoint(x: 0.7, y: 0.7)
        gradientLayer.endPoint = CGPoint(x: 0.2, y: 0.5)

        layer.addSublayer(gradientLayer)
    }
}
