return {
  "mfussenegger/nvim-lint",
  optional = true,
  opts = {
    linters = {
      ["markdownlint-cli2"] = {
        args = { "--config", "../kaixin/markdownlint-cli2.yaml", "--" },
      },
    },
  },
}
