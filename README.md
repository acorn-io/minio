# MinIO Acorn

MinIO is an object storage server, compatible with Amazon S3 cloud storage.

## About

This Acorn launches a single node single drive instance of MinIO server. It is intended for testing and development purposes. The container is backed by a persistent volume, so data will persist across restarts and host reboots.

## Access UI Console

To access the UI console you will need to run the following commands to access the MinIO server UI

```bash
acorn port-forward minio 9000
acorn port-forward minio 9001
```

Then open your browser to <http://localhost:9000>

The credentials can be revealed:

```bash
acorn secret reveal minio.root-user
```
