import UIKit

struct Info {
    let title: String
}

class InfoViewController: UIViewController {
    var info: Info
    
    private var alertButton: UIButton = {
        let alertButton = UIButton(type: .system)
        alertButton.setTitle("Вопрос зачетной комиссии. (Не судите строго)", for: .normal)
        alertButton.translatesAutoresizingMaskIntoConstraints = false
        
        return alertButton
    }()
    
    init(info: Info) {
        self.info = info
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = info.title
        self.view.backgroundColor = .red
        
        alertButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        
        view.addSubview(alertButton)
        
        NSLayoutConstraint.activate([
            alertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            alertButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func showAlert() {
        let alert = UIAlertController(
            title: "Я получила зачет?",
            message: "Очень хочется получить зачет",
            preferredStyle: .alert
        )
        
        let yesAction = UIAlertAction(title: "Да", style: .default) { _ in
            print("Поздравляем! Вы получили зачет.")
            self.view.backgroundColor = .green
            
        }
            let noAction = UIAlertAction(title: "Нет", style: .cancel) { _ in
                print("К сожалению, зачет не получен.")
                self.view.backgroundColor = .gray
            }
            
            alert.addAction(yesAction)
            alert.addAction(noAction)
            
            self.present(alert, animated: true)
        }
    }


