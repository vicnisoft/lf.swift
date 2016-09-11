import ReplayKit

class BroadcastViewController: UIViewController {

    func userDidFinishSetup() {

        let broadcastURL = URL(string:"http://broadcastURL_example/stream1")

        let userID = "user1"
        let endpointURL = "http://broadcastURL_example/stream1/upload"
        let setupInfo: [String: NSCoding & NSObjectProtocol] =  [ "userID" : userID as NSString, "endpointURL" : endpointURL as NSString ]

        let broadcastConfiguration = RPBroadcastConfiguration()
        broadcastConfiguration.clipDuration = 5

        self.extensionContext?.completeRequest(withBroadcast: broadcastURL!, broadcastConfiguration: broadcastConfiguration, setupInfo: setupInfo)
    }
    
    func userDidCancelSetup() {
        let error = NSError(domain: "YouAppDomain", code: -1, userInfo: nil)
        self.extensionContext?.cancelRequest(withError: error)
    }
}
