cask "maklock" do
  version "1.0.1"
  sha256 "cd22f48441e64b0ad16d96351bd8ca5635ded393c8fa66d4f2f959497ea0f531"

  url "https://github.com/dutkiewiczmaciej/MakLock/releases/download/v#{version}/MakLock-#{version}.dmg"
  name "MakLock"
  desc "Lock apps with Touch ID, Apple Watch, or password"
  homepage "https://github.com/dutkiewiczmaciej/MakLock"

  livecheck do
    url "https://dutkiewiczmaciej.github.io/MakLock/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "MakLock.app"

  zap trash: [
    "~/Library/Application Support/com.makmak.MakLock",
    "~/Library/Caches/com.makmak.MakLock",
    "~/Library/HTTPStorages/com.makmak.MakLock",
    "~/Library/Preferences/com.makmak.MakLock.plist",
  ]
end
