cd ./ocp4
export KUBECONFIG=./auth/kubeconfig
oc adm policy add-cluster-role-to-user cluster-admin admin
