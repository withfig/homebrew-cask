cask "sameboy" do
  version "0.15.7"
  sha256 "be1fdce3fd590bf1352195fab358daf7a404f6e8f2d9f0d3693b3d7b8a4f347f"

  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip",
      verified: "github.com/LIJI32/SameBoy/"
  name "SameBoy"
  desc "Game Boy and Game Boy Color emulator written in C"
  homepage "https://sameboy.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "SameBoy.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.liji32.sameboy.sfl2",
    "~/Library/Caches/com.github.liji32.sameboy",
    "~/Library/Preferences/com.github.liji32.sameboy.plist",
    "~/Library/Saved Application State/com.github.liji32.sameboy.savedState",
  ]
end
