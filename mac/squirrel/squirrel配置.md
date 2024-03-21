```bash
# 回到家目录，可选
cd ~

# 安装 plum，这是 Rime 官方的配置管理工具
git clone --depth=1 https://github.com/rime/plum
cd plum

# 安装 Rime 配置：雾凇拼音
bash rime-install iDvel/rime-ice:others/recipes/full

# 安装 鼠须管 Squirrel，安装之后需要登出系统重新登入才能添加输入法
brew install --cask squirrel

cp squirrel.custom.yaml ~/Library/Rime/
```

[参考链接](https://baiyun.me/rime-simple-tutorial)