## TODO: prepare all the questions before the meeting (1 hour before it starts)

<!-- -->

## cloud native principle:

cloud native principle: microservice oriented
what loosely coupled ... means here?

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
we specify which containers we create and their labels

just to for sake of explicity?

<!---->

lesson 6, 3:25
service provides layer-4 load balancing for a group of pods
what is layer-4? transport layer of osi? I am a bit bad at networking, can your
explain practical implications of 4 and 7 layer load balancing?

<!---->

## NODEPORT

1. does node port does load balancing?
   to what node for service it should go?

2. port is open on each node, so control plane nodes as well?
   how we can prevent that?
   and should we?

<!---->

## EXTERNAL LOAD BALANCER

lesson 6, 7:06

1. what is external load balancer used for?
   yout yesterday said: external gateway to the cluster itself

<!-- does ingress do same? -->

my guess is: it just defines which worker node port to contact for accesing a service ?
and then load balancing in service decides where to go next to the app logic, right?

<!---->

2. what is the diff between ingress controller and just ingress?

it just very confusing, how there terms are used

yesterday you said that ingress does not any load balancing
ingress pod does load balancing because it need to define which node should take request to service

<!-- 3. yesterday you made an example with service NODEPORT that exposes every node's port with IngressController -->
<!--    but i thought that ingress pod (ingress object) has itself external port, so why do need a service? -->
<!--    can you explain what I am getting wrong? -->

4. how ingress pod decides which service will be used? (clusterIp service inside of node pod that choose service?)

<!---->

## POD networking

i still don't understand, if pod is accesible and has
api without any service around it in internal cluster network

if there is any reasonable use case to accesing pod directly by its current api?
why would pod expose ip, if it is unreasanoable to use it in all the cases?

<!---->

## SELF-RESEARCH

<!---->

ingress is very similar to virtual hosting concept in ngnix or apache. what is that concept?

<!---->

Contour ingress controller installed
what is controur? what are the diffrent variants? what are the diffrences between them?

<!---->

what is private adressing schema in virtual network kubernetes create?
it create diffrent schema than your data center uses so there is no conflict

could you please in short describe what this all means and how works?

<!---->

## TODO

<!-- TODO: install metallb -->
