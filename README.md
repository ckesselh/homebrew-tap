# ckesselh/homebrew-tap

Homebrew-Casks von ckesselh.

## Günther die Gurke 2

Auf einem Mac mit Apple Silicon (ab macOS 13):

```sh
brew install --cask ckesselh/tap/guenther-die-gurke-2
```

Neue Versionen holt `brew upgrade`. Die App ist nicht von Apple geprüft, darum hält macOS sie beim ersten Start und nach jedem Update an: die Meldung schließen, dann Systemeinstellungen → Datenschutz & Sicherheit → „Dennoch öffnen“ und mit dem Passwort bestätigen. Unter macOS 14 reicht ein Rechtsklick auf die App → „Öffnen“.

Alternativ im Terminal (hebt die Sperre nur für diese App auf):

```sh
xattr -dr com.apple.quarantine "/Applications/Günther die Gurke 2.app"
```

`brew uninstall --cask guenther-die-gurke-2` entfernt das Spiel wieder, mit `--zap` auch die Daten, die das Spiel ablegt.

Das Spiel: https://guenther-die-gurke-2.vercel.app · Downloads für Windows, macOS und Linux: https://github.com/ckesselh/guenther-die-gurke-2-download
