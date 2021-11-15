oc delete ServiceAccount nfs-pod-provisioner-sa
oc delete ClusterRole nfs-provisioner-clusterRole
oc delete ClusterRoleBinding nfs-provisioner-rolebinding
oc delete Role nfs-pod-provisioner-otherRoles
oc delete RoleBinding nfs-pod-provisioner-otherRoles
oc delete StorageClass nfs
oc delete Deployment nfs-pod-provisioner
