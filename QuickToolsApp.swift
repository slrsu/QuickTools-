
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
        let webView = WKWebView(frame: .zero)
        webView.backgroundColor = .black
        webView.isOpaque = false
        webView.scrollView.backgroundColor = .black

        let url = URL(string: "https://quicktoolsofficial.vercel.app")!
        webView.load(URLRequest(url: url))

        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}
