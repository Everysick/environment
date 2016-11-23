#! /bin/sh
set -e

version='1.0.0'

case "$(uname)" in
    "Darwin")
        mitamae_bin="mitamae-x86_64-darwin"
        ;;
    "Linux")
        mitamae_bin="mitamae-x86_64-linux"
        ;;
    *)
        echo "unknown uname: $(uname)"
        exit 1
        ;;
esac

wget "https://github.com/k0kubun/mitamae/releases/download/v${version}/${mitamae_bin}" -O bin/mitamae
chmod +x bin/mitamae
