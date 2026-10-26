# ckesselh/homebrew-tap

Homebrew-Casks von ckesselh.

## Günther die Gurke 2

Auf einem Mac mit Apple Silicon (ab macOS 13):

```sh
brew install --cask ckesselh/tap/guenther-die-gurke-2
```

Neue Versionen holt `brew upgrade`. Die App ist nicht von Apple notarisiert. Damit sie ohne Freigabe in den Systemeinstellungen startet, entfernt der Cask nach Installation und Update die Quarantäne-Markierung von macOS, nur für diese App. Das ist nicht der von Homebrew empfohlene Weg. Wer das nicht möchte, lädt das Disk-Image direkt herunter und gibt die App beim ersten Start frei (Systemeinstellungen → Datenschutz & Sicherheit → „Dennoch öffnen“).

`brew uninstall --cask guenther-die-gurke-2` entfernt das Spiel wieder, mit `--zap` auch die Daten, die das Spiel ablegt.

Das Spiel: https://guenther-die-gurke-2.vercel.app · Downloads für Windows, macOS und Linux: https://github.com/ckesselh/guenther-die-gurke-2-download
