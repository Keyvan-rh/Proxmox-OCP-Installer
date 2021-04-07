wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/$1/openshift-install-linux.tar.gz
wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/$1/openshift-client-linux.tar.gz
tar -xvf openshift-install-linux.tar.gz
tar -xvf openshift-client-linux.tar.gz
cp kubectl /usr/local/bin/.
cp oc /usr/local/bin/.
cp openshift-install /usr/local/bin/.
