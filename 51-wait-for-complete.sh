cd ./ocp4
export KUBECONFIG=./auth/kubeconfig
openshift-install wait-for install-complete
