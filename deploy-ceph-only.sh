source ~/stackrc
pushd ~ ; upload-puppet-modules -d puppet-modules ; popd
time openstack overcloud deploy --templates ~/templates \
--libvirt-type qemu \
--compute-scale 0 --ceph-storage-scale 1 \
-e ~/tht/ceph-only.yaml
