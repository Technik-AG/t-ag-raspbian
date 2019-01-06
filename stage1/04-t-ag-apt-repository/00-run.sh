#!/bin/bash -e

curl -s "https://technik-ag.github.io/apt-repo/repo.deb" --output "${ROOTFS_DIR}/t-ag-apt-repository.deb"
on_chroot -c "apt-get install /t-ag-apt-repository.deb"
rm "${ROOTFS_DIR}/t-ag-apt-repository.deb"
