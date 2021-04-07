cd ./ocp4
export KUBECONFIG=./auth/kubeconfig
oc get csr --no-headers | awk '{print $1}' | xargs oc adm certificate approve
oc get csr | grep 'system:node'
