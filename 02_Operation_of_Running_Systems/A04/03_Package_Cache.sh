ls -l /var/cache/apt/pkgcache.bin
sudo apt update
ls -l /var/cache/apt/pkgcache.bin



The list of available online packages from the configured APT repositories are stored
locally in a cache. If this has been updated recently, we should not need to update
the cache before searching or installing software. Checking the last modified time of
the cache file will show the last update.