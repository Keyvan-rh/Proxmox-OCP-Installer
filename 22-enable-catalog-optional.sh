cd ocp4
export KUBECONFIG=./auth/kubeconfig
oc edit servicecatalogapiservers
oc edit servicecatalogcontrollermanagers
echo "Login to UI create namespace openshift-template-service-broker and install service broker"
echo "Select the installed operator and Under Provided APIs, click Create New for Template Service Broker"
