# Moved to upsun/homebrew-tap

This Homebrew tap has moved to [upsun/homebrew-tap](https://github.com/upsun/homebrew-tap).

Homebrew will automatically redirect formula installations via `tap_migrations.json`.

## Manual Migration

```bash
brew untap platformsh/tap
brew tap upsun/tap
```

For Scoop users (replace `platform` with `upsun` if you installed the `upsun` app):

```bash
scoop bucket rm platformsh
scoop bucket add upsun https://github.com/upsun/homebrew-tap.git
scoop uninstall platform
scoop install upsun/platform
```

Scoop keeps the manifest of an installed app, so `scoop update` does not move it to the new bucket: it must be
reinstalled.

## License
MIT
