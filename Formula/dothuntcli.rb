class Dothuntcli < Formula
  desc "CLI for checking best-effort domain availability"
  homepage "https://github.com/benithors/dothuntcli"
  url "https://github.com/benithors/dothuntcli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e97a20b23160a62d8bef1fccc45a5e3d1fd4b233a4846d58585c8b78a07ffb2a"
  version "0.1.0"
  head "https://github.com/benithors/dothuntcli.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/dothuntcli"
  end

  test do
    assert_match "Find available domain names", shell_output("#{bin}/dothuntcli --help")
  end
end
