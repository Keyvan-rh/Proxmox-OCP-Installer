cd ./ocp4
export KUBECONFIG=./auth/kubeconfig
oc edit configs.imageregistry/cluster
oc edit configs.imageregistry.operator.openshift.io
