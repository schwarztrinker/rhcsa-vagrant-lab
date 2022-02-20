# Lab environment for EX200 (RHCSA) built with VirtualBox and Vagrant
For the RH124 and 134 courses i needed a local lab environment for preperation. In this repo you can use and see my outcome.

## Prerequisites
You installed: 
- Vagrant
- VirtualBox or HyperV or KVM

## Setting up the environment
``` 
vagrant up
```

## SSH into workstation

```
vagrant ssh workstation
```
Here you can switch to theuser student. 

```
su - student   [PASSWORD = student]
```

## SSH directly into workstation as user student

``` 
vagrant port workstation

ssh -p hostport student@localhost 
``` 

your Port may differ

## Enable disk provisioning at windows

```
$env:VAGRANT_EXPERIMENTAL="disks"

vagrant reload
```
