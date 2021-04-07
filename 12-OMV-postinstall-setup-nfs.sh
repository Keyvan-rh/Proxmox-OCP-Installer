cd ocp4
export KUBECONFIG=./auth/kubeconfig
oc create -f ../templates/nfs-rbac.yaml
oc create -f ../templates/nfs-sc.yaml
oc create -f ../templates/OMV-nfs-provisioner-deployment.yaml
