# Day-12: Advanced Kubernetes ConfigMap & Secrets 🔐


## Overview

Today I learned advanced Kubernetes configuration management using ConfigMap and Secrets.

In Kubernetes, application configuration and sensitive data should be managed separately from application code.

Today I implemented:

- ConfigMap using volume mount
- Secret using volume mount
- Secret data verification
- Base64 encoding and decoding


## What is ConfigMap?

ConfigMap is a Kubernetes object used to store non-sensitive configuration data.

Examples:

- Application settings
- Configuration files
- Environment values


## What is Secret?

Secret is a Kubernetes object used to store sensitive information.

Examples:

- Username
- Password
- API keys
- Tokens


## ConfigMap vs Secret


| ConfigMap | Secret |
|---|---|
| Normal configuration data | Sensitive data |
| Application settings | Passwords |
| Plain text | Base64 encoded |
| Less sensitive information | Protected information |


# Practical Implementation


## 1. Created ConfigMap using Configuration File


Command:

kubectl create configmap nginx-config --from-file=nginx-config.conf


Created ConfigMap from nginx configuration file.


## 2. Verified ConfigMap


Command:

kubectl describe configmap nginx-config


Checked stored configuration data.


## 3. Mounted ConfigMap into Pod


Created nginx Pod with ConfigMap volume mount.

Flow:

ConfigMap

|

Volume Mount

|

Nginx Container


Verified inside container:

kubectl exec -it nginx-config-volume-pod -- ls /etc/nginx/conf.d


kubectl exec -it nginx-config-volume-pod -- cat /etc/nginx/conf.d/nginx-config.conf


## 4. Created Secret using File


Command:

kubectl create secret generic app-secret-volume --from-file=secret-data.txt


Created Kubernetes Secret.


## 5. Mounted Secret into Pod


Secret was mounted inside container as a volume.


Verified:

kubectl exec -it nginx-secret-volume-pod -- ls /etc/secret


kubectl exec -it nginx-secret-volume-pod -- cat /etc/secret/secret-data.txt


## 6. Checked Secret YAML


Command:

kubectl get secret app-secret-volume -o yaml


Verified that Secret data is stored in encoded format.


## 7. Decoded Secret Data


Decoded Base64 encoded Secret data and verified original information.


## Screenshots

1.  01-create-configmap.png
2.  02-describe-configmap.png
3.  03-configmap-volume-mount.png
4.  04-create-secret-volume.png
5.  05-secret-volume-mount.png
6.  06-secret-yaml-encoded.png
7.  07-secret-base64-decode.png
8.  08-final-pods-status.png


# Key Learnings

- Learned advanced ConfigMap usage.
- Learned ConfigMap volume mounting.
- Learned Secret volume mounting.
- Learned Kubernetes Secret encoding.
- Learned configuration management best practices.
- Learned separating configuration from application.


# Day-12 Summary

Today I implemented advanced Kubernetes configuration management using ConfigMaps and Secrets.

I mounted configuration files and secret files into containers and verified how Kubernetes manages application configuration securely.