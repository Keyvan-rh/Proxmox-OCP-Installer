wget https://mirror.openshift.com/pub/openshift-v4/dependencies/rhcos/$1/latest/rhcos-live-rootfs.x86_64.img
wget https://mirror.openshift.com/pub/openshift-v4/dependencies/rhcos/$1/latest/rhcos-live-kernel-x86_64
wget https://mirror.openshift.com/pub/openshift-v4/dependencies/rhcos/$1/latest/rhcos-live-initramfs.x86_64.img
cp rhcos-live-* /var/www/html/install/.
