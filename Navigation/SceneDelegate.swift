import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else {
            return
        }
        
        
        window = UIWindow(windowScene:windowScene)
        
        let tabbarController = UITabBarController()
        
        let feedNavController = UINavigationController()
        
        let profileNavController = UINavigationController()
        
    
        feedNavController.tabBarItem = UITabBarItem(title:"Feed", image:UIImage(systemName:"doc.richtext"),tag: 0)
        
        
        profileNavController.tabBarItem = UITabBarItem(title:"Profile", image:UIImage(systemName:"person.circle"), tag: 1)
        
        
        feedNavController.viewControllers = [FeedViewController()]
        
        profileNavController.viewControllers = [LogInViewController()]
        
        tabbarController.viewControllers = [feedNavController, profileNavController]
        
        window?.rootViewController = tabbarController
        
        window?.makeKeyAndVisible()
        
        func sceneDidDisconnect(_ scene: UIScene) {
            
        }
        
        func sceneDidBecomeActive(_ scene: UIScene) {
            
        }
        
        func sceneWillResignActive(_ scene: UIScene) {
            
        }
        
        func sceneWillEnterForeground(_ scene: UIScene) {
            
        }
        
        func sceneDidEnterBackground(_ scene: UIScene) {
            
        }
    }
}
