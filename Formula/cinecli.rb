class Cinecli < Formula
  desc "CLI tool for browsing Cineplexx Austria cinemas, movies, and showtimes"
  homepage "https://github.com/benithors/cinecli"
  url "https://github.com/benithors/cinecli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "4f13441c52980cf835960b043dde2e61e6208114c64e9f94f7f2929da562f661"
  head "https://github.com/benithors/cinecli.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/cinecli", "version"
  end
end
