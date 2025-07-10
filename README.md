# 🧪 Rich Dev Template (Python + Rust + Nix)

This is a reusable development environment template powered by **Nix Flakes**, designed for full-stack developers using **Python**, **Rust**, **Docker**, **Node.js**, and **PostgreSQL** on **macOS** or **Linux**.

## 🔧 Features

- ✅ Isolated environments using Nix + Flakes
- 🐍 Python 3.12 with `venv`
- 🦀 Rust + `rust-analyzer`
- 🐘 PostgreSQL client tools
- 🐳 Docker CLI
- 📦 Node.js + npm
- 🧰 Common CLI tools: `git`, `jq`, `ripgrep`, `htop`, etc.
- 📁 Project structure with `Makefile`, Python + Rust starters
- ⚙️ Easy to extend and reproduce

## 🚀 Getting Started

### 1. Clone the template (or use on GitHub with "Use this template")

```bash
git clone https://github.com/<your-username>/rich-dev-template.git
cd rich-dev-template
```

### 2. Enable direnv (only once per shell)

```bash
direnv allow
```

### 3. Set up Python venv and tools

```bash
make setup
make install-dev
```

### 4. Run / test your code

```bash
make run      # runs src/main.py
make test     # runs pytest
make format   # black .
make lint     # flake8 .
```

### 5. Run Rust app

```bash
cd rust-app
cargo run
```

## 📁 Project Structure

```
rich-dev-template/
├── .envrc
├── .gitignore
├── LICENSE
├── Makefile
├── README.md
├── flake.nix
├── requirements-dev.txt
├── src/
│   └── main.py
├── rust-app/
│   ├── Cargo.toml
│   └── src/
│       └── main.rs
```

## 🧠 Notes

- Customize shell aliases and packages in `flake.nix`
- Add new targets to `Makefile` for your workflows
- Add tests in `tests/` or under `src/` for Python
- Extend this to support CI/CD or Docker if needed

---

MIT License © 2025