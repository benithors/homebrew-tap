cask "picnic" do
  version "0.0.2"
  sha256 "53b0be2d0a9139831b985ce5c512349299b871c7f64903e5c54007d27949572c"

  url "https://github.com/benithors/picnic/releases/download/v#{version}/Picnic.app.zip"
  name "Picnic"
  desc "Tiny macOS menu bar app for fast screenshots"
  homepage "https://github.com/benithors/picnic"

  app "Picnic.app"

  zap trash: [
    "~/Library/Preferences/com.#{ENV["USER"]}.Picnic.plist",
  ]
end
