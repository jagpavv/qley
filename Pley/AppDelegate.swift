import UIKit
import Pulley
import AlamofireNetworkActivityIndicator
import StatusBarOverlay

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        StatusBarOverlay.host = YelpAPIService.Constants.host
        NetworkActivityIndicatorManager.shared.isEnabled = true

        window = UIWindow(frame: UIScreen.main.bounds)
        let mainContentVC = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "RestaurantMapViewController")
        let drawerContentVC = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "RestaurantTableViewController")
        let restaurantViewController = RestaurantViewController(contentViewController: mainContentVC,
                                                            drawerViewController: drawerContentVC)
        window?.rootViewController = restaurantViewController
        window?.makeKeyAndVisible()

        return true
    }
}
