class Cinecli < Formula
  desc "CLI tool for browsing Cineplexx Austria cinemas, movies, and showtimes"
  homepage "https://github.com/benithors/cinecli"
  url "https://github.com/benithors/cinecli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "ec1a458374ad02614a187998bc542741056c36bec2e936f3117a421088084934"
  head "https://github.com/benithors/cinecli.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/cinecli", "version"
  end
end
