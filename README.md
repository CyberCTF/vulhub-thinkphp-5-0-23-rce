# ThinkPHP 5.0.23 Request Method RCE

[Vulhub](https://vulhub.org)'s [`thinkphp/5.0.23-rce`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/thinkphp/5.0.23-rce) environment, by
phith0n and the Vulhub contributors: ThinkPHP 5.0.23, whose Request class takes the method name from the `_method` parameter, so a POST calls `__construct` and filters reach `call_user_func`. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine runs Vulhub's published image `vulhub/thinkphp:5.0.23`; the environment folder is vendored in [`app/`](app) and the image's Dockerfile in [`base/`](base).

| Machine | Service |
| --- | --- |
| web | ThinkPHP 5.0.23 on Apache, port 80 published as 8080 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8080/ (the ThinkPHP default page). The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/thinkphp/5.0.23-rce/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
