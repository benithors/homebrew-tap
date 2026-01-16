class BringsCli < Formula
  desc "CLI for Bring! shopping lists - manage lists, add recipes with scaled ingredients"
  homepage "https://github.com/benithors/brings-cli"
  url "https://github.com/benithors/brings-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b590b3c6a5a2b2fad3da22d521ba56f0a6a26ca769eaef855b9da62cde1cf34f"
  head "https://github.com/benithors/brings-cli.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-o", bin/"brings", "./cmd/brings"
  end

  test do
    system "#{bin}/brings", "--help"
  end
end
