cask "picnic" do
  version "0.0.1"
  sha256 "af1cde314b8d5359ab90185b4cf648dfae9cbf4e1fc81683e302e30120745bcb"

  url "https://github.com/benithors/picnic/releases/download/v#{version}/Picnic.app.zip"
  name "Picnic"
  desc "Tiny macOS menu bar app for fast screenshots"
  homepage "https://github.com/benithors/picnic"

  app "Picnic.app"

  zap trash: [
    "~/Library/Preferences/com.#{ENV["USER"]}.Picnic.plist",
  ]
end
