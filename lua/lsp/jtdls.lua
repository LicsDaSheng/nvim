config = {
  cmd = {
    "java",
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "-Xms1g",
    "--add-modules=ALL-SYSTEM",
    "--add-opens",
    "java.base/java.util=ALL-UNNAMED",
    "--add-opens",
    "java.base/java.lang=ALL-UNNAMED",
    "-jar",
    "/Users/scottlee/.config/nvim/lib/jdtls/plugins/org.eclipse.equinox.launcher_*.jar",
    "-configuration",
    "/Users/scottlee/.config/nvim/lib/jdtls/config_mac",
    "-data",
    "/Users/scottlee/workspace/jdtls"
  },
  root_dir = require("jdtls.setup").find_root({".git", "mvnw", "gradlew"}),
  settings = {
    java = {}
  },
  init_options = {
    bundles = {}
  }
}

require("jdtls").start_or_attach(config)