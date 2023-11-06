import AppKit

@main
struct PBCopier {
    static func main() {
        var pboardType = NSPasteboard.PasteboardType.string

        if CommandLine.arguments.contains("--html") {
          pboardType = NSPasteboard.PasteboardType.html
        }

        var text = ""
        while let inText = readLine(strippingNewline: false) { text += inText }

        let pboard = NSPasteboard.general
        pboard.clearContents()
        pboard.setString(text, forType: pboardType)
        print("Copied!")
    }
}
