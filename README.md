# distributor

Read this in other languages: English | [简体中文](./README.zh-CN.md)

GitHub Actions for automated distribute archived webpages.

## Workflow

## Configurations

#### DISTRIBUTE_TOKEN (required)

GitHub account authentication token for storing webpages.

#### DISTRIBUTE_OWNER (default: current user)

GitHub account username for storing webpages.

#### DISTRIBUTE_REPO (default: current repository)

GitHub repository name for storing webpages.

#### DISTRIBUTE_CHANNEL (required)

Webpages soruce, telegram channel name.

#### DISTRIBUTE_LIMIT (optional)

Limit the number of messages to fetching at one time.

#### DISTRIBUTE_CMD (default: github)

## Example

Using current GitHub account to storing data, it require add all the [required](#configurations) configs to Secrets.

```yaml
- uses: wabarc/distributor@main
  env:
    DISTRIBUTE_TOKEN: ${{ secrets.DISTRIBUTE_TOKEN }}
    DISTRIBUTE_OWNER: ${{ secrets.DISTRIBUTE_OWNER }}
    DISTRIBUTE_REPO: ${{ secrets.DISTRIBUTE_REPO }}
    DISTRIBUTE_CHANNEL: ${{ secrets.DISTRIBUTE_CHANNEL }}
```

Using current GitHub account to storing data, it only require add `DISTRIBUTE_CHANNEL` to Secrets.

```yaml
- uses: wabarc/distributor@main
  env:
    DISTRIBUTE_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    DISTRIBUTE_CHANNEL: ${{ secrets.DISTRIBUTE_CHANNEL }}
```

For more details, see [wabarc/broker](https://github.com/wabarc/broker).

## License

This software is released under the terms of the MIT. See the [LICENSE](https://github.com/wabarc/distributor/blob/main/LICENSE) file for details.
