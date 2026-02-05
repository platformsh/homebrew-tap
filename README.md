# Moved to upsun/homebrew-tap

This Homebrew tap has moved to [upsun/homebrew-tap](https://github.com/upsun/homebrew-tap).

Homebrew will automatically redirect formula installations via `tap_migrations.json`.

## Manual Migration

```bash
brew untap platformsh/tap
brew tap upsun/tap
```

For Scoop users:

```bash
scoop bucket rm platformsh
scoop bucket add upsun https://github.com/upsun/homebrew-tap.git
```

## License
MIT
