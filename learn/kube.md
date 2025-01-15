<!---->

apiVersion: apps/v1
kind: Deployment
metadata:
name: example-deployment
spec:
selector: # This defines which Pods to manage
matchLabels:
app: example
template: # This defines how to create the Pods
metadata:
labels: # These labels will be assigned to the Pods
app: example
spec:
containers: - name: example-container
image: example-image

why to specify matchLabels and labels seperately in deployment declaration?
just to for sake of explicity

<!---->

what is private adressing schema in virtual network kubernetes create?
it create diffrent schema than your data center uses so there is no conflict

<!---->

lesson 6, 3:25
service provides layer-4 load balancing for a group of pods
what is layer-4?

<!---->

nodeportr:
port is open on each node, control plane nodes? how we can prevent that? and should we?

<!---->

lesson 6, 7:06
why do we need external and internal load balancers?

<!---->

ingress is very similar to virtual hosting concept in ngnix or apache. what is that concept?

<!---->

Contour ingress controller installed
what is controur? what are the diffrent variants? what are the diffrences between them?

<!---->

what is the diff between ingress controller and just ingress?

<!---->

part 3 has tutorial cut off
