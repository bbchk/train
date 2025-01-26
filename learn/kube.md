## TODO: prepare all the questions before the meeting (1 hour before it starts)

<!---->

## SELF-RESEARCH

<!---->

ingress is very similar to virtual hosting concept in ngnix or apache. what is that concept?

<!---->

what is private adressing schema in virtual network kubernetes create?
it create diffrent schema than your data center uses so there is no conflict

could you please in short describe what this all means and how works?

<!---->

<!---->

## NODEPORT

<!-- what will happen if you change kind(leave old name identifier) -->
<!-- of deployment to statefulSet (not deleting running deployment before it) -->
<!---->
<!-- where configMap sits? it should be secure as it contains creadentials and other sensitive data -->
<!-- should we stick to volume reference way or default one? pros or cons? -->
<!---->
<!-- k8s command on container -->
<!-- what if docker image has entrypoint not cmd, will it be overwritten? -->
<!---->
<!-- no: but to specify arguments to enrypoint, use args in k8s contianer declaration -->
<!---->
<!-- can we run cronJob that start some parallel job on schedule -->

dnsPolicy: ClusterFirst
what is this in pod yaml?

<!-- resourceQouta is like role? -->
<!-- how to ref resourceQuota in pods or containers? -->

<!-- what can we update in deployment pod template spec of fly (when it's running)? -->
<!-- what is prohibited to changed and requires whole deployemnt to be deleted and created with new values -->

namespaces are not fullly isolated like real cluster, right?Jk w

so environment is just namespace with some abstraction above
why we call environment not namespace, is there diffrentce
so we create new cluster for every application

how test environment release gets into production?

<!-- every business unit has its own branch -->
<!-- envrionment depends on some branch in git -->

<!-- what service exectly in ike? -->
<!-- can we create our own? -->

what means anonomized db

commit will be built automatically into image, right?

## TODO

<!-- TODO: install metallb -->
