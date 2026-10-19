# Packaging CDK

rcdklibs bundles the official CDK release uberjar (`cdk-<version>.jar`,
published with each [CDK release](https://github.com/cdk/cdk/releases))
as the only jar in `inst/cont/`. It already includes all CDK modules and
their dependencies, so no custom build is needed.

To update to a new CDK release:

1.  Set `CDK_VERSION` in the `Makefile`.
2.  Run `make all`. This downloads the uberjar, verifies its SHA-256
    checksum and replaces the contents of `inst/cont/`.
3.  Update `Version`/`Date` in `DESCRIPTION` and add an entry to
    `NEWS.md`.
