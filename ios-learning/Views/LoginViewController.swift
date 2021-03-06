import UIKit
import MisterFusion

class LoginViewController: UIViewController {

  // 设置顶部状态栏颜色
  override func preferredStatusBarStyle() -> UIStatusBarStyle {
    return UIStatusBarStyle.LightContent
  }

  // 隐藏状态栏
  override func prefersStatusBarHidden() -> Bool {
    return true
  }


  override func viewDidLoad() {
    super.viewDidLoad()

    drawLayout()
  }

  func drawLayout() {
    let redView = UIView()
    redView.backgroundColor = .redColor()
    self.view.addLayoutSubview(redView, andConstraints:
      redView.Top   |+| 10,
      redView.Right |-| 10,
      redView.Left  |+| 10
    )

    let yellowView = UIView()
    yellowView.backgroundColor = .yellowColor()
    self.view.addLayoutSubview(yellowView, andConstraints:
      yellowView.Top    |==| redView.Bottom |+| 10,
      yellowView.Left   |+|  10,
      yellowView.Bottom |-|  58,
      yellowView.Height |==| redView.Height |+| 100
    )

    let greenView = UIView()
    greenView.backgroundColor = .greenColor()
    self.view.addLayoutSubview(greenView, andConstraints:
      greenView.Top    |==| redView.Bottom    |+| 10,
      greenView.Left   |==| yellowView.Right  |+| 10,
      greenView.Bottom |-|  58,
      greenView.Right  |-|  10,
      greenView.Width  |==| yellowView.Width,
      greenView.Height |==| yellowView.Height
    )
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}
