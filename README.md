# Xplenty

## Overview

This setup is for running a reverse SSH tunnel for Xplenty.

https://www.xplenty.com/docs/allowing-xplenty-access-to-my-server-behind-a-firewall/

This way, we don't have to open up any firewalls for the ETL service to access databases in our network.

## Overlays

The overlays are structured for each connection.

For example, the `mysql` overlay is used to create a reverse SSH connection with the MySQL database.

We will need an overlay for each database connection we need to establish in our private network.

## Deploy

Make sure that you're pointing `kubectl` to the Production cluster first.

``` sh
$ kustomize build overlays/<overlay-name> | kubectl apply -f -
```
