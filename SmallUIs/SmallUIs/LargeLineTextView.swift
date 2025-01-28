import SwiftUI

/// 長文でも改行が含まれる場合分割配置することで処理を軽くする
struct LargeLineTextView: View {

    // TODO: 可能ならViewの幅から1行に収まる文字を切り出したい

    let text: String
    private let lines: [String]

    init(_ text: String) {
        self.text = text
        self.lines = text.components(separatedBy: .newlines)
    }

    var body: some View {
        LazyVStack(alignment: .leading, spacing: 0) {
            ForEach(Array(lines.enumerated()), id: \.offset) { _, line in
                Text(line)
            }
        }
    }
}

#Preview {
    LargeLineTextView("test")
}
