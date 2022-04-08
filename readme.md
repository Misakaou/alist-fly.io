# Alist on Fly.io

## Deploy to fly.io

### first - create fly app

`fly launch`

### second - create fly volume

> create 1GB volume to persistent storage settings(data)

`flyctl volumes create data --region hkg --size 1`

```text
[[mounts]]
  source = "data"
  destination = "/data"
```

### third - deploy app

`fly deploy`
