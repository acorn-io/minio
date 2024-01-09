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

Then open your browser to <http://localhost:9001>

The credentials can be revealed:

```bash
acorn secret reveal minio.root-user
```

## Disclaimer

Disclaimer: You agree all software products on this site, including Acorns or their contents, may contain projects and materials subject to intellectual property restrictions and/or Open-Source license (“Restricted Items”). Restricted Items found anywhere within this Acorn or on Acorn.io are provided “as-is” without warranty of any kind and are subject to their own Open-Source licenses and your compliance with such licenses are solely and exclusively your responsibility. [MinIO](https://min.io) is licensed under AGPL which can be found here [License](https://github.com/minio/minio/blob/master/LICENSE) and Acorn.io does not endorse and is not affiliated with MinIO.
