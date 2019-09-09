# tensorboard-docker

Use this image to run a Tensorboard Docker container.
You can run it using the following command:

```
docker run -itd -p YOUR_PORT:80 --name tensorboard-`whoami` -v YOUR_TFLOG_DIR:/tflog ripl/tensorboard
```

where

- `YOUR_PORT` is a port that is not used on your machine (e.g., 9001)
- `YOUR_TFLOG_DIR` is the absolute path to the directory where you save your tensorflow logs

You can see tensorboard by opening the browser to the link `http://HOST:YOUR_PORT`.
