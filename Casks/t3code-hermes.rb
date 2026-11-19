cask "t3code-hermes" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.11-nightly.20261119.358"
  on_arm do
    sha256 "af4e528b480db972ff66d34562952c2e0e230d5faa97bf89f5416ceca68b6a0f"
  end
  on_intel do
    sha256 "b98b0fa19a9fc1f71224bcb2c9347a248bcd2dfa4f4320325e4361c503ffef9f"
  end

  url "https://github.com/NateWeav/t3code-hermes/releases/download/v#{version}/T3-Code-Nightly-#{arch}.AppImage"
  name "T3 Hermes (Beta)"
  desc "Desktop app for coding agents with Hermes Agent support"
  homepage "https://github.com/NateWeav/t3code-hermes"

  livecheck do
    url :url
    regex(/^v?(\d+\.\d+\.\d+-nightly\.\d+\.\d+)$/i)
  end

  depends_on arch: [:arm64, :x86_64]
  depends_on :linux

  app_image "T3-Code-Nightly-#{arch}.AppImage"
end
