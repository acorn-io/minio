## Example

This is an example of using the MinIO Acorn to back a toy instance of OCI registry v2. It is only to illustrate the use of an S3 bucket. This is not intended for production use.

The user credentials can be obtained by running:

```bash
acorn secret reveal [APP_NAME].registry-user-creds
```

You can use those to do a `docker login` to the registry.
