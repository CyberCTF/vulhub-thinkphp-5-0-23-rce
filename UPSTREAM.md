# Upstream

| | |
| --- | --- |
| Project | Vulhub |
| Repository | https://github.com/vulhub/vulhub |
| Environment | `thinkphp/5.0.23-rce` |
| Version | default branch (Vulhub has no releases) |
| Commit | 8fd63916f7a8711e2e01dda0d27237e4d6175d38 |
| Licence | MIT |

| Here | Vulhub path |
| --- | --- |
| `app/` | [`thinkphp/5.0.23-rce`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/thinkphp/5.0.23-rce) |
| `base/thinkphp/5.0.23/` | [`base/thinkphp/5.0.23`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/base/thinkphp/5.0.23): the Dockerfile of `vulhub/thinkphp:5.0.23` |

The vendored folders are that commit, unchanged. The lab runs Vulhub's published image `vulhub/thinkphp:5.0.23`, pinned by tag (as Vulhub's own compose file does); its Dockerfile is vendored under `base/` to show how it is built. Building from `base/` instead would download the vulnerable software from its original sources, some of which are gone.

To update, replace the vendored folders with a newer Vulhub commit, then change this file.
