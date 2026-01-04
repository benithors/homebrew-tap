class Picnic < Formula
  desc "Tiny macOS menu bar app for fast screenshots"
  homepage "https://github.com/benithors/picnic"
  url "https://github.com/benithors/picnic/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "ef68a0f812b61056149fc28351b87baff3998973013ede5a3a9e790c00b73f2a"
  head "https://github.com/benithors/picnic.git", branch: "main"

  depends_on :macos
  depends_on :xcode => ["15.0", :build]

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/Picnic" => "picnic"
  end

  test do
    system "#{bin}/picnic", "--help"
  end
end
