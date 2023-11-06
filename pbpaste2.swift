import AppKit

@main
struct PBPaster {
    static func main() {
        var pboardType = NSPasteboard.PasteboardType.string

        if CommandLine.arguments.contains("--html") {
            pboardType = NSPasteboard.PasteboardType.html
        }

        let pboard = NSPasteboard.general
        if let output = pboard.string(forType: pboardType) {
            print(output)
        } else {
            print("Nothing found with that format in the pasteboard");
        }
    }
}
