# nvim
My nvim config

## 参考资料
 - [在 neovim 中使用 Lua](https://github.com/glepnir/nvim-lua-guide-zh)

## 依赖

### sdkman 
用于管理各种jdk版本，默认的lsp中的配置的jdk runtime都是使用的sdkman的路径
参考 ftplugin/java.lua
```lua
   configuration = {
     updateBuildConfiguration = "interactive",
     runtimes = {
       {
         name = "JavaSE-11",
         path = "~/.sdkman/candidates/java/11.0.2-open",
       },
       {
         name = "JavaSE-18",
         path = "~/.sdkman/candidates/java/18.0.1.1-open",
       },
     },
   },
```

