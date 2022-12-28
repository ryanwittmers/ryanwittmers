#!/bin/bash

# If homebrew is installed, install the below packages.
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
    array=( bat
            bdw-gc
            c-ares
            ca-certificates
            gdbm
            gettext
            glib
            gmp
            gnutls
            guile
            libevent
            libffi
            libgcrypt
            libgpg-error
            libidn2
            libmaxminddb
            libnghttp2
            libsmi
            libssh
            libtasn1
            libtermkey
            libtool
            libunistring
            libuv
            libvterm
            libzip
            lua
            luajit
            luajit-openresty
            luv
            lz4
            m4
            mpdecimal
            msgpack
            neovim
            nettle
            openssl@1.1
            p11-kit
            pcre
            pcre2
            pkg-config
            python@3.10
            python@3.9
            readline
            speedtest-cli
            sqlite
            tldr
            tree
            tree-sitter
            unbound
            unibilium
            wget
            wireshark
            xz
            zstd
            1password-cli )

    # Install all of the packages
    for i in "${array[@]}"
    do
        brew install $i
    done
fi

