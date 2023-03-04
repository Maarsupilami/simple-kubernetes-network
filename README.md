# Here are the steps to create a cluster in Minikube named maarsu-planet, set up an administrator account named maarsupilami, create two namespaces named maarsu-network and maarsu-private, deploy an Nginx server in maarsu-network namespace to proxy requests to a Flask app running in the maarsu-private namespace, and create a service account with read access in maarsu-network namespace.

1. Start a Minikube cluster named maarsu-planet with the following command:
	minikube start --profile maarsu-planet


