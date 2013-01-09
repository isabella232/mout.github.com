# Pull latest version from git repo and build HTML documentation.
# ----
# At each release please create a folder with the version number and create
# a backup inside of it. That way we can keep online version of old docs.

git clone https://github.com/mout/mout.git --depth 1 _swap
rm -rf docs
node node_modules/mdoc/bin/mdoc -i _swap/doc -o docs --title "mout : Modular JavaScript Utilities" --index _swap/README.md --template template
rm -rf _swap

