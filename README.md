## pkgbuild

This is an exported repository of configuration files and scripts used to
create Joyent's SmartOS packages.  The aim here is to provide users with
everything they may need to replicate those packages, and help them to create
a build environment for developing packages.

### Getting Started

The easiest way to get going is with the pkgbuild image.

```console
curl -Os http://us-east.manta.joyent.com/pkgsrc/public/images/pkgbuild-15.3.0.json
curl -Os http://us-east.manta.joyent.com/pkgsrc/public/images/pkgbuild-15.3.0.zfs.gz
imgadm install -m pkgbuild-15.3.0.json -f pkgbuild-15.3.0.zfs.gz
```

Once you have a zone running, the `run-sandbox` scripts creates a chrooted
build environment for the specified configuration, e.g.:

```console
run-sandbox 2015Q3-x86_64
```

Then you can build packages as normal:

```console
: Build vim with the 'perl' option enabled
echo 'PKG_OPTIONS.vim+= perl' >>/opt/local/etc/mk.conf
cd /data/pkgsrc/editors/vim
bmake package
```

Resulting in a binary package in:

```
/data/packages/SmartOS/2015Q3/x86_64/All/vim-7.4.768.tgz
```

### Layout

#### `conf/`

The `conf/` directory contains a directory per build.  Inside each directory
there are a few files of note:

* `config.xml` is a Jenkins job configuration suitable for the build.
* `mail-report` is a per-build script for sending out reports and bulk build
  failures.  Ideally this would be centralised, but due to the way this script
  is called it is currently generated for each build so that the `From:` header
  can be customised.
* `mk-fragment.conf` is a simple include file useful for the `--mk-fragment`
  argument to the pkgsrc `bootstrap` script.
* `mk.conf` is the pkgsrc configuration for the build, which may pull in
  additional files as required based on the build name.
* `pbulk.conf` is a configuration file for pbulk which is used to bulk build
  a large set of packages
* `pkgbuild.conf` is a configuration file containing all of the variables for
  this build, and is sourced by most of the scripts in the `scripts/`
  directory.

#### `homedir/`

This is just a mostly-empty directory which is created as the `pbulk` user's
home directory inside build chroots.

#### `include/`

This contains additional `make(1)` files which are included based upon the
branch name, most notably `include/pkgoptions/<branch>.mk` which includes the
major configuration for each branch.

#### `meta/`

This directory is for additional pkgsrc `INSTALL` scripts and SMF manifests
which are mainly used to override the default pkgsrc versions.  Ideally this
directory should be empty and we should upstream all of our changes.

#### `overlay/`

This directory contains files which are overlay mounted on top of system files
to alter their behaviour.

#### `scripts/`

This contains various scripts used to bootstrap pkgsrc, run Jenkins, create
chroots and some other miscellaneous tasks.
