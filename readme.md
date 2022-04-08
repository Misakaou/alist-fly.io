# Readme

## first - create fly app

`fly launch`

## second - create fly volume

`flyctl volumes create data --region hkg --size 1`

```text
[[mounts]]
  source = "data"
  destination = "/data"
```

## third - deploy app

`fly deploy`
