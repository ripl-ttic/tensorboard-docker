# tensorboard-docker

Use this image to run a Tensorboard Docker container.
You can run it using the following command:

```
docker run -itd -p YOUR_PORT:6006 --user=$UID -v YOUR_TFLOG_DIR:/tflog ripl/tensorboard
```

where

- `YOUR_PORT` is a port that is not used on your machine (e.g., 9001)
- `YOUR_TFLOG_DIR` is the absolute path to the directory where you save your tensorflow logs

You can see tensorboard by opening the browser to the link `http://HOST:YOUR_PORT`.


## Troubleshooting

### Permission denied

If the path `YOUR_TFLOG_DIR` is part of a mounted
directory (e.g., nfs), you will likely get the
error `Permission denied`. To prevent this, set
`YOUR_TFLOG_DIR` to be the base mountpoint and then
use the environment variable `TF_LOGS` to point
tensorboard to the right place.
For example, suppose you have an nfs mounted to
`/mount/mynfs` and your tf logs are in
`/mount/mynfs/data/logs/`,
use the docker options`-v /mount/mynfs:/tflogs`
and `-e TF_LOGS=/tflogs/data/logs`.
