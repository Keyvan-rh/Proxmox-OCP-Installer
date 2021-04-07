cd ocp4
export KUBECONFIG=./auth/kubeconfig
oc patch storageclass nfs -p '{"metadata": {"annotations": {"storageclass.kubernetes.io/is-default-class": "true"}}}'
