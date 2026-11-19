import SwiftUI
import WebKit

@main
struct QuickToolsApp: App {
    var body: some Scene {
        WindowGroup {
            QuickToolsView()
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
        }
    }
}

struct QuickToolsView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences.allowsContentJavaScript = true
        let view = WKWebView(frame: .zero, configuration: config)
        view.isOpaque = false
        view.backgroundColor = .black
        view.scrollView.backgroundColor = .black
        view.scrollView.contentInsetAdjustmentBehavior = .never
        if let file = Bundle.main.url(forResource: "index", withExtension: "html") {
            view.loadFileURL(file, allowingReadAccessTo: file.deletingLastPathComponent())
        }
        return view
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
