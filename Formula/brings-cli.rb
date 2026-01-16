class BringsCli < Formula
  desc "CLI for Bring! shopping lists - manage lists, add recipes with scaled ingredients"
  homepage "https://github.com/benithors/brings-cli"
  url "https://github.com/benithors/brings-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "511b8d0c624f5cd8ae8c2b16ee89fc43269636a66446a10b5cebdf317ba8a54e"
  head "https://github.com/benithors/brings-cli.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-o", bin/"brings", "./cmd/brings"
  end

  test do
    system "#{bin}/brings", "--help"
  end
end
