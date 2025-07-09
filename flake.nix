{
  description = "Rich DevShell with Python venv, Rust, Node, Docker, DB tools";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";

  outputs = { self, nixpkgs, ... }: let
    system = "aarch64-darwin";
    pkgs = import nixpkgs { inherit system; };
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [
        python312
        rustup
        rust-analyzer
        nodejs
        postgresql
        docker
        git
        jq
        ripgrep
        fd
        tree
        htop
        wget
        unzip
        curl
        neovim
      ];

      shellHook = ''
        echo "🧪 Dev environment activated!"
        alias ll="ls -lh"
        alias gs="git status"
        alias gl="git log --oneline --graph --decorate"
        alias lg="lazygit"
        alias py="python3"
        alias venv-create='python3 -m venv .venv && source .venv/bin/activate'
        alias venv-activate='source .venv/bin/activate'
        export EDITOR=nvim
        export DATABASE_URL=postgresql://localhost:5432
      '';
    };
  };
}