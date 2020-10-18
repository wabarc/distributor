# distributor

Read this in other languages: English | [简体中文](./README_zh-CN.md)

GitHub Action for automated distribute archived webpages.

## Workflow

## Configurations

- GITHUB_TOKEN / DISTRIBUTE_TOKEN (required)
- DISTRIBUTE_OWNER (required)
- DISTRIBUTE_REPO (required)
- DISTRIBUTE_CHANNEL (required)

## Example

```yaml
- uses: wabarc/distributor@master
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    DISTRIBUTE_OWNER: ${{ secrets.DISTRIBUTE_OWNER }}
    DISTRIBUTE_REPO: ${{ secrets.DISTRIBUTE_REPO }}
    DISTRIBUTE_CHANNEL: ${{ secrets.DISTRIBUTE_CHANNEL }}
```

## License

This software is released under the terms of the MIT. See the [LICENSE](https://github.com/wabarc/distributor/blob/master/LICENSE) file for details.
