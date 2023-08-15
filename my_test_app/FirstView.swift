import UIKit

class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 创建视图控制器实例
        let firstVC = FirstViewController()
        let secondVC = SecondViewController()
        let thirdVC = ThirdViewController()
        
        // 设置选项卡信息
        firstVC.tabBarItem = UITabBarItem(title: "First", image: nil, tag: 0)
        secondVC.tabBarItem = UITabBarItem(title: "Second", image: nil, tag: 1)
        thirdVC.tabBarItem = UITabBarItem(title: "Third", image: nil, tag: 2)
        
        // 创建 Tab Bar 控制器并添加视图控制器
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [firstVC, secondVC, thirdVC]
        
        // 将 Tab Bar 控制器设置为窗口的根视图控制器
//        UIWindowScene.windows.first?.rootViewController = tabBarController
    }
}
