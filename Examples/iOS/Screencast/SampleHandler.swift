import ReplayKit

@available(iOS 10.0, *)
class SampleHandler: RPBroadcastSampleHandler {

    override func broadcastStarted(withSetupInfo setupInfo: [String : NSObject]?) {
    }

    override func broadcastPaused() {
    }
    
    override func broadcastResumed() {
    }

    override func broadcastFinished() {
    }

    override func processSampleBuffer(_ sampleBuffer: CMSampleBuffer, with sampleBufferType: RPSampleBufferType) {
        switch sampleBufferType {
            case RPSampleBufferType.video:
                break
            case RPSampleBufferType.audioApp:
                break
            case RPSampleBufferType.audioMic:
                break
        }
    }
}
