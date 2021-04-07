rm -rf ocp4
mkdir ocp4
rm -f /var/www/html/ignition/*
cp  vars-kvm.yaml vars.yaml 
cp ./backup/append-bootstrap.ign ./ocp4/.
cp ./backup/install-config.yaml ./ocp4/.
cd ./ocp4
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/ocp46
openshift-install create manifests
sed -i 's/mastersSchedulable: true/mastersSchedulable: false/g' manifests/cluster-scheduler-02-config.yml
cat manifests/cluster-scheduler-02-config.yml
openshift-install create ignition-configs
cp *.ign /var/www/html/ignition/
cd /var/www/html/ignition/
chmod 777 *
restorecon -vR /var/www/html/
