cask "lingon-x" do
  if MacOS.version <= :high_sierra
    version "6.6.5"
    sha256 "b0231b1a98dcc8f5c4234b419c9f5331407b8cce29b33f0ea2e32b12595adfa8"
  elsif MacOS.version <= :big_sur
    version "8.4.9"
    sha256 "c1c839e8dc13bd295f2080980c5bea22299c33f3333b7c6981161b46d6f021d8"
  else
    version "9.0.6"
    sha256 "f57e4239bfaf76e0dbece059ef0b6b7c60122ed7a5b2cb65a9d1ab78c761cfdf"
  end

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  name "Lingon X"
  desc "Automator software to start apps, run scripts or commands and more"
  homepage "https://www.peterborgapps.com/lingon/"

  livecheck do
    url "https://www.peterborgapps.com/updates/lingonx#{version.major}.plist"
    regex(%r{<key>version</key>\s*\n\s*<string>(\d+(?:\.\d+)+)</string>}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Lingon X.app"

  zap trash: [
    "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
    "~/Library/Application Support/Lingon X",
    "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
  ]
end
