# distributor

使用其它语言阅读: [English](./README.md) | **简体中文**

用于分发存储已归档网页的 GitHub Actions。目前已支持自动存档网页到 GitHub 仓库，网页链接来自 Telegram 频道。

## 特性

- 支持再分发任意通过[wabarc/wayback](https://github.com/wabarc/wayback)发布的内容；
- 支持分发数据到当前仓库；
- 支持分发数据到指定的仓库；
- 借助 GitHub Actions 实现定时任务；
- 借助 GitHub Pages 预览归档网页；

## 工作原理

`distrobutor` 是一个 Docker 容器操作，它由 [wabarc/broker](https://github.com/wabarc/broker) 借助 [wabarc/archiver](https://github.com/wabarc/archiver)
和 [wabarc/packer](https://github.com/wabarc/packer) 分别提供的数据打包和网页归档，以分发数据到各平台。

### 配置选项

#### DISTRIBUTE_TOKEN (required)

GitHub 个人认证 token，该值为必选项。

#### DISTRIBUTE_OWNER (default: current user)

分发存储已归档网页所使用的 GitHub 帐号，默认当前用户。

#### DISTRIBUTE_REPO (default: current repository)

用于存储网页的 GitHub 仓库，默认值为当前仓库。

#### DISTRIBUTE_CHANNEL (required)

`wayback` 所使用的 channel 名称，该值为必选项。

#### DISTRIBUTE_LIMIT (optional)

限制一次处理消息的数量。

#### DISTRIBUTE_CMD (default: github)

分发指令，可选 github 和 duty-machine，默认值为 github。

## 样例

分发存储已归档网页到其它 GitHub 帐号的仓库，需提供[配置选项](#配置选项)中说明的各选项，可参考如下：

```yaml
- uses: wabarc/distributor@main
  env:
    DISTRIBUTE_TOKEN: ${{ secrets.DISTRIBUTE_TOKEN }}
    DISTRIBUTE_OWNER: ${{ secrets.DISTRIBUTE_OWNER }}
    DISTRIBUTE_REPO: ${{ secrets.DISTRIBUTE_REPO }}
    DISTRIBUTE_CHANNEL: ${{ secrets.DISTRIBUTE_CHANNEL }}
```

若仅存储到当前仓库，则只需增加一项 Secrets 配置 `DISTRIBUTE_CHANNEL`，可参考如下：

```yaml
- uses: wabarc/distributor@main
  env:
    DISTRIBUTE_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    DISTRIBUTE_CHANNEL: ${{ secrets.DISTRIBUTE_CHANNEL }}
```

更多信息，详见 [wabarc/broker](https://github.com/wabarc/broker)

## License

MIT
