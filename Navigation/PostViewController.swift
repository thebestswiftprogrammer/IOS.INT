import UIKit
import StorageService
struct Post {
    let title: String
}

class PostViewController: UIViewController {
    var post: Post
    
    private var button: UIButton = {
        let infoButton = UIButton(type: .system)
        infoButton.setTitle("Info", for: .normal)
        infoButton.translatesAutoresizingMaskIntoConstraints = false
        
        return infoButton
    }()
    
    init(post: Post) {
        self.post = post
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        title = post.title
        
        let barButtonItem = UIBarButtonItem(
            title: "Info",
            style: .plain,
            target: self,
            action: #selector(showInfo)
        )
        navigationItem.rightBarButtonItem = barButtonItem
    }
    
    @objc func showInfo() {
        let info = Info(title: "Info")
        let infoVC = InfoViewController(info: info)
        navigationController?.present(infoVC, animated: true, completion: nil)
    }
}


