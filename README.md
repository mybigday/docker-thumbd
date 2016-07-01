# Thumbd

> Another [Thumbd](https://github.com/bcoe/thumbd) docker image based on [alpine-node](https://github.com/mhart/alpine-node).

## Usage

```bash
$ docker run -d -p 5959:5959 --name thumbd --env-file=.env fucompany/thumbd
```

The `.env` file is your configuration ([.env.default](.env.default)), see [this documentation](https://github.com/bcoe/thumbd#setup) for more information.

## Build

```bash
$ docker build --rm -t fucompany/thumbd .
```

## LICENSE

[MIT](LICENSE.md)
