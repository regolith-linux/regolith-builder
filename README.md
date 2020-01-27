# regolith-builder

This package contains scripts and models to build Regolith packages.

## `build.sh`

This program will use Debian tools to create and upload packages to the Ubuntu PPA builder.

`build.sh <package model> <PPA URI> <temp dir>`

## `back-copy.sh`

This program will copy a pre-existing package from one PPA/Ubuntu-version to another PPA/Ubuntu-version.

`back-copy.sh <source PPA URI> <source Ubuntu version> <target PPA URI> <target Ubuntu version> [<package name>]`

If package name isn't specified, all configured packages within the script will be copied.

## Example: Building Regolith R1.3 

This example assumes write-access to the Regolith PPA.  Substitute a different PPA of your own.

```bash
$ ./build.sh package-model-R1.3.json ppa:regolith-linux/ubuntu/r1.3 /tmp/regolith-r1.3
$ # Wait an hour for the package builder to finish building before copying packages
$ ./back-copy.sh ~regolith-linux/ubuntu/r1.3 eoan ~regolith-linux/ubuntu/r1.3 bionic
$ ./back-copy.sh ~regolith-linux/ubuntu/r1.3 disco ~regolith-linux/ubuntu/r1.3 bionic regolith-gnome-flashback
```