class BringsCli < Formula
  desc "CLI for Bring! shopping lists - manage lists, add recipes with scaled ingredients"
  homepage "https://github.com/benithors/brings-cli"
  url "https://github.com/benithors/brings-cli/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "07c171ec79342f201dfbe941f36e15f45478e7c277aac9da59163f8d6753c7d6"
  head "https://github.com/benithors/brings-cli.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-o", bin/"brings", "./cmd/brings"
  end

  test do
    system "#{bin}/brings", "--help"
  end
end
