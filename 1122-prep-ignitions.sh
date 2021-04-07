rm -rf ocp4
rm -rf ocp22
mkdir ocp22
mkdir ocp4
rm -f /var/www/html/ignition/*
cp ./backup/install-config.ocp22 ./ocp22/install-config.yaml
cd ./ocp22
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
openshift-install create manifests
sed -i 's/mastersSchedulable: true/mastersSchedulable: false/g' manifests/cluster-scheduler-02-config.yml
cat manifests/cluster-scheduler-02-config.yml
openshift-install create ignition-configs
cp *.ign /var/www/html/ignition/
cd /var/www/html/ignition/
chmod 777 *
restorecon -vR /var/www/html/
