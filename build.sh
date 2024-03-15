# Run this script in CLANGARM64 environment
pacman -S --needed mingw-w64-clang-aarch64-meson

rm -rf build_debug
/clangarm64/bin/meson.exe setup build_debug
pushd build_debug
ninja test
popd
