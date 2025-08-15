return {
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("code_runner").setup({
        filetype = {
          cpp = {
            "cd $dir &&",
            "g++ $fileName -std=c++20 -O2 -o $fileNameWithoutExt &&",
            "./$fileNameWithoutExt",
          },
        },
      })
    end,
    keys = {
      { "<leader>r", "<cmd>RunCode<CR>", desc = "Run code with code_runner" },
    },
  },
}
