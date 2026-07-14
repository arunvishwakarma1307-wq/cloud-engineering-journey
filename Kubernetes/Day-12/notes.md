# Day-12 Notes: Kubernetes ConfigMap & Secrets


## ConfigMap

ConfigMap is used to store non-sensitive configuration data.

Examples:

- Configuration files
- Application settings
- Environment values


## Secret

Secret is used to store sensitive information.

Examples:

- Password
- Username
- API token


## ConfigMap Volume Mount


Flow:

ConfigMap

 |

Volume

 |

Container


ConfigMap data can be mounted as files inside containers.


Example:

/etc/nginx/conf.d/nginx-config.conf


## Secret Volume Mount


Flow:

Secret

 |

Volume Mount

 |

Container


Secret data becomes available as files inside container.


Example:

/etc/secret/secret-data.txt


## Secret Encoding

Kubernetes stores Secret values in Base64 encoded format.


Example:

Original:

username=admin


Encoded:

Base64 string


Decoded:

username=admin


## Why Use ConfigMap?

Benefits:

- Separate configuration from code
- Easy configuration updates
- Better application management


## Why Use Secret?

Benefits:

- Store sensitive information
- Avoid hardcoding passwords
- Improve security


## Best Practices

- Never commit real secrets to GitHub.
- Use external secret management tools in production.
- Use RBAC permissions for Secret access.
- Keep application configuration separate.


## Commands Learned

kubectl create configmap

Used to create ConfigMaps.


kubectl create secret

Used to create Secrets.


kubectl describe

Used to inspect Kubernetes objects.


kubectl exec

Used to execute commands inside containers.


kubectl get secret -o yaml

Used to view Secret configuration.


## Day-12 Summary

Today I learned advanced Kubernetes configuration management.

I used ConfigMaps and Secrets with volume mounts and understood how Kubernetes handles application configuration and sensitive data.