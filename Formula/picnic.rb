class Picnic < Formula
  desc "Tiny macOS menu bar app for fast screenshots"
  homepage "https://github.com/benithors/picnic"
  head "https://github.com/benithors/picnic.git", branch: "main"

  depends_on :macos
  depends_on :xcode => ["15.0", :build]

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/Picnic" => "picnic"
  end

  test do
    # Since it is a GUI app, testing it headless might be tricky if it doesn't have a help command that exits.
    # We'll try running it and expecting it to fail or checking version if implemented.
    # For now, just a placeholder test that usually works for swift apps if they parse args.
    # If not, we might need to remove this or adapt.
    system "#{bin}/picnic", "--help" 
  end
end
