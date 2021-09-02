# Lab environment for EX200 (RHCSA) built with VirtualBox and Vagrant
For the RH124 and 134 courses i needed a local lab environment for preperation. In this repo you can use and see my outcome.

## Setting up the environment
``` 
vagrant up
```

## SSH into workstation

```
vagrant ssh workstation
```
Here you can change to user student

```
su - student
```
The password is "student"

## SSH directly into workstation as user student

``` 
ssh -p 2222 student@localhost 
``` 

your Port may differ