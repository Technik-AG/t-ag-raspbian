#!/bin/bash -e

curl -s "https://technik-ag.github.io/apt-repo/repo.deb" --output "${ROOTFS_DIR}/t-ag-apt-repository.deb"
on_chroot << EOF
apt-get install /t-ag-apt-repository.deb
apt-get update
EOF
rm "${ROOTFS_DIR}/t-ag-apt-repository.deb"
