# BUG

Reproduce with:

```sh
updatecli apply -c updatecli.tpl -v artifacts-23.yaml -v updatecli_values.yaml
```

```sh
Application:    0.89.0
Golang     :    1.23.4 linux/amd64
Build Time :    2024-12-09T07:59:15Z


######################################################
# UPDATE ARTIFACTS FOR VERSION USING REUSABLE MATRIX #
######################################################

source: source#src_acs
--------------
ERROR: ✗ getting latest version: URL "https://nexus.alfresco.com/nexus/repository/%3Cno%20value%3E/%3Cno%20value%3E/%3Cno%20value%3E/maven-metadata.xml" not found or in error
```
