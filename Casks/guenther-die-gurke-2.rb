cask "guenther-die-gurke-2" do
  version "0.1.1"
  sha256 "fa94f2decff96618fa9af0c5fb9cc9866259912ce4959a51bcefa150eaeaf926"

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

  zap trash: [
    "~/Library/Application Support/Godot/app_userdata/Günther die Gurke 2",
    "~/Library/Saved Application State/eu.kinsoft.guenthergurke2.savedState",
  ]

  caveats <<~EOS
    Die App ist nicht von Apple geprüft. Beim ersten Start und nach jedem Update
    hält macOS sie deshalb an:
      1. Die App einmal öffnen und die Meldung schließen.
      2. Systemeinstellungen → Datenschutz & Sicherheit → „Dennoch öffnen“,
         dann mit dem Passwort bestätigen.
    Unter macOS 14 reicht auch: Rechtsklick auf die App → „Öffnen“.

    Alternativ im Terminal (hebt die Sperre nur für diese App auf):
      xattr -dr com.apple.quarantine "/Applications/Günther die Gurke 2.app"
  EOS
end
