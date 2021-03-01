protocol IPrivacySyncModeView: AnyObject {
    func set(coinTitle: String, coinCode: String, blockchainType: String?)
    func set(viewItems: [PrivacySyncModeModule.ViewItem])
}

protocol IPrivacySyncModeViewDelegate {
    func onLoad()
    func onTapViewItem(index: Int)
    func onTapDone()
}

protocol IPrivacySyncModeRouter {
    func close()
}

protocol IPrivacySyncModeDelegate: AnyObject {
    func onSelect(syncMode: SyncMode, coin: Coin)
}

class PrivacySyncModeModule {

    struct ViewItem {
        let title: String
        let subtitle: String
        let selected: Bool
    }

}
