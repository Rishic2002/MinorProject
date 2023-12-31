import UIKit
import AVFoundation

class AboutViewController: UIViewController{
       
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func done_clicked(_ sender: Any) {
        if let vc = self.presentingViewController as? ViewController {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    
    @IBAction func mail_clicked(_ sender: Any) {
        let appURL = URL(string: "mailto:rishi.chhabra@yash-tech.com") // URL scheme for Mail app
        
        if let appURL = appURL, UIApplication.shared.canOpenURL(appURL) {
            // If Mail app is installed, open it with a pre-filled email
            UIApplication.shared.open(appURL, options: [:], completionHandler: nil)
        } else {
            // If Mail app is not installed, show an alert indicating that Mail app is not available
            let alert = UIAlertController(title: "Mail App Not Available", message: "The Mail app is not installed on this device.", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func skype_clicked(_ sender: Any) {

    }
    
   
    
    @IBAction func whatsapp_clicked(_ sender: Any) {
        let appURL = URL(string: "whatsapp://send?phone=+918851297931") // URL scheme for Telegram app
            
            if let appURL = appURL, UIApplication.shared.canOpenURL(appURL) {
                // If Telegram app is installed, open it to the "Add Contact" screen
                UIApplication.shared.open(appURL, options: [:], completionHandler: nil)
            } else {
                let username = "+918851297931"
                let telegramURL = URL(string: "https://wa.me/\(username)")!
                UIApplication.shared.open(telegramURL, options: [:], completionHandler: nil)
            }
    }
    
    @IBAction func github_clicked(_ sender: Any) {
        let telegramURL = URL(string: "https://github.com/rishic2002")!
        UIApplication.shared.open(telegramURL, options: [:], completionHandler: nil)
    }
}

