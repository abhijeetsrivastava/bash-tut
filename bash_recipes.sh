#!/bin/bash

####################################################
# 1. Writing a file to multiple destination
# cp command in linux lets us to write from multiple location to a single
# destination. What if we want to do the reverse (copy a file to multiple
# destinations)?

for i in dest1 dest2 dest3; do cp file $i; done

# How is this helpful if we have to type the destinations manually?
# autocompletions for rescue

# example: lets say your folder structure includes 
# secret/project/service/environment1
# secret/project/service/environment2
# secret/project/service/environment3
# secret/project/service/environment4
#
# and your task is to copy a new secret from ~/secret/secret.rsa to these
# destinations?
#
# you can type the following command
# for i in s/p/s/* <PRESS TAB for autocomplete> 
# The above line will expand to the following
# for i in secret/project/service/environment1 secret/project/service/environment2 secret/project/service/environment3 secret/project/service/environment4 
# and then you can type the rest

for i in secret/project/service/environment1 secret/project/service/environment2 secret/project/service/environment3 secret/project/service/environment4 ; do cp ~/.secret/secret.rsa $i; done
