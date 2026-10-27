cask "guenther-die-gurke-2" do
  version "0.1.3"
  sha256 "357446cccca97d18af160b42f9c14fd0dc764ea6dbcd1ee62f4027e598bf6d60"

  url "https://github.com/ckesselh/guenther-die-gurke-2-download/releases/download/v#{version}/GuentherDieGurke2-v#{version}-macos.dmg"
  name "Günther die Gurke 2"
  desc "2D-Actionspiel auf Deutsch: Eine Gurke schlägt zurück"
  homepage "https://guenther-die-gurke-2.vercel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Günther die Gurke 2.app"

  # Ad-hoc signed, not notarized, so Gatekeeper would stop the app after every install and
  # upgrade. Lifting the quarantine for this one app is not Homebrew's recommended way (that is
  # notarization); it stays until the app is notarized. The sha256 above pins the dmg.
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Günther die Gurke 2.app"]
  end

  zap trash: [
    "~/Library/Application Support/Godot/app_userdata/Günther die Gurke 2",
    "~/Library/Saved Application State/io.github.ckesselh.guenthergurke2.savedState",
  ]

  caveats <<~EOS
    Die App ist nicht von Apple notarisiert. Damit sie ohne Freigabe in den
    Systemeinstellungen startet, entfernt der Cask nach Installation und Update
    die Quarantäne-Markierung von macOS, nur für diese App. Das ist nicht der
    von Homebrew empfohlene Weg.
  EOS
end
