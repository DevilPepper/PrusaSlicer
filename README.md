# PrusaSlicer

This repo is just a GH Actions workflow that builds the latest [PrusaSlicer](https://github.com/prusa3d/PrusaSlicer) for Debian. I'm _pretty_ sure it works on the same version of Debian it was built with as is. The release notes say what version that was.

I'd unpack the archive somewhere, and put `bin/prusa-slicer` into your `PATH`. There are desktop files in the archive root and the matching icons are `resources/icons/PrusaSlicer*.svg`.

_resources/_ just needs to be adjacent to the directory containing `prusa-slicer`.

### Docker image

This is just a build image used by the release workflow. It has the minimum requirements to build PrusaSlicer as described here:

<https://github.com/prusa3d/PrusaSlicer/blob/e70983ad9170c583e0b5d55250740ada1bdd19f7/doc/How%20to%20build%20-%20Linux%20et%20al.md>
