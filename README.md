## usd2rub

A tiny CLI tool that fetches the latest USD sale price from the Moscow Exchange and converts a user‑specified amount of dollars to rubles.  
If no amount is provided, it defaults to **1 USD**.

---

### Usage

```bash
# Convert the default 1 USD
usd2rub

# Convert a custom amount (e.g., 25 USD)
usd2rub 25
```

---
## Install

```bash
# Install to the system prefix (default: /usr/local)
make install

# Instal to a user-local directory
make install PREFIX=$HOME/.local
```

## Uninstall

```bash
# Remove files installed to the system prefix
make uninstall

# Remove files installed to a user-local directory
make uninstall PREFIX=$HOME/.local
```

### License

This project is licensed under the **GNU Affero General Public License v3.0 (AGPL‑3.0)**. See `LICENSE` for details.
