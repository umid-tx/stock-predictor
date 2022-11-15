## Question 1 - Interview Readiness:
What does it mean to create a Docker image and why do we use Docker images?

## Answer 1:
* Docker image is a template (a snapshot) which containts instructions to create/build a Docker container that can run on the Docker platform. 
* Docker image is a reusable and deployable in any host since it contains all the executable packages needed to run an application. It can be used privately or shared publicly.

## Question 2 - Interview Readiness:
Please explain what is the difference from a Container vs a Virtual Machine?

## Answer 2:
* Main difference in utilization of resources (a container mainly virtualizes the operating system whereas a virtual machine virtualizes the hardware).
* Virtual machine is an emulation of the physical machine (e.g., multiple operating systems can be run on a single computer)
* An advantage of a virtual machine is the ability to have a fully isolated OS. 
* A container is more lightweight and more portable than a vertual machine.

## Question 3 - Interview Readiness:
What are 5 examples of container orchestration tools (please list tools)?

## Answer 3:
A container orchestration tool helps manage containers and microservices at scale.
Examples:
1. Kubernetes
2. Openshift
3. Nomad
4. Docker Swarm
5. Apache Mesos

## Question 4 - Interview Readiness:
How does a Docker image differ from a Docker container?

## Answer 4:
* First docker image is created and then docker container is created when docker run command is executed.
* Docker image is a read-only (i.e. snapshot) and immutable (i.e. can't change them once created) template containing instructions for creating a container. 
* Since docker image is a template, it can be used to build a container. Multiple images can be used to building a container. 






