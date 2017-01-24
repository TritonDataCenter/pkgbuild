## pkgbuild

This is an exported repository of configuration files and scripts used to
create Joyent's SmartOS packages.  The aim here is to provide users with
everything they may need to replicate those packages, and help them to create a
build environment for developing packages.

While primarily for SmartOS, this repository does also support builds on both
OSX and Linux.

### Setup

#### SmartOS

For SmartOS we provide a 'pkgbuild' image which contains everything you need to
get started.  The images currently provided are:

```console
29c78df0-bed1-11e5-995a-b398d555a1d4 pkgbuild 15.4.0
c20b4b7c-e1a6-11e5-9a4d-ef590901732e pkgbuild 15.4.1
65fddecc-0dfb-11e6-8b78-77bb9608a2ab pkgbuild 16.1.0
4183fce6-49b2-11e6-a1ca-4f007e77f9d5 pkgbuild 16.2.0
36745198-8bed-11e6-951b-ab8d0c913b14 pkgbuild 16.3.0
39448a6c-96bc-11e6-a8f9-ab22626c8431 pkgbuild 16.3.1
```

#### Generic

If you don't want to use the pkgbuild image, or are running a different
operating system, the following generic instructions should be followed.

Fetch the `pkgbuild` and `pkgsrc` repositories.

```console
: The default is to have everything under /data.  If you wish to use a
: different prefix you'll need to set additional variables later.
mkdir /data; cd /data
git clone https://github.com/joyent/pkgbuild.git
git clone https://github.com/joyent/pkgsrc.git
```

### Building Packages

Once you have a zone running, the `run-sandbox` scripts creates a chrooted
build environment for the specified configuration, e.g.:

```console
run-sandbox 2015Q4-x86_64
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
/data/packages/SmartOS/2015Q4/x86_64/All/vim-7.4.768.tgz
```

For Linux and OSX, you should use one of the following configurations:

```console
run-sandbox linux-trunk-i386    # Linux 32-bit
run-sandbox linux-trunk-x86_64  # Linux 64-bit
run-sandbox osx-trunk-i386      # OSX 32-bit
run-sandbox osx-trunk-x86_64    # OSX 64-bit
```

For further information about builds, see
<https://pkgsrc.joyent.com/docs/building/> (you can skip the initial setup and
go straight to "Building a package").

### Repository layout

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
