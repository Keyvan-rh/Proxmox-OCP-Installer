wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-install-linux.tar.gz
wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux.tar.gz
tar -xvf openshift-install-linux.tar.gz
tar -xvf openshift-client-linux.tar.gz
cp kubectl /usr/local/bin/.
cp oc /usr/local/bin/.
cp openshift-install /usr/local/bin/.
