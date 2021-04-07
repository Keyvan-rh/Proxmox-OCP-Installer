cd ocp4
export KUBECONFIG=./auth/kubeconfig
oc patch storageclass ocs-storagecluster-cephfs -p '{"metadata": {"annotations": {"storageclass.kubernetes.io/is-default-class": "true"}}}'
