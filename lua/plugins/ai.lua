return {
    "David-Kunz/gen.nvim",
    opts = function(_, opts)
        opts.model = "mistral"
        local gen = require("gen")
        gen.prompts["DevOPS me!"] = {
            prompt = "You are a senior devops engineer, acting as an assistant. You offer help with cloud technologies like: Terraform, AWS, kubernetes, python. You answer with code examples when possible. $input: \n$text",
            replace = true,
        }

        gen.prompts["Test it!"] = {
            prompt = "You are a senior software engineer, acting as an assistant. Given code you propose ways to test it. You answer with code examples when possible. $input: \n$text",
            replace = true,
        }
    end,
    keys = {
      -- https://github.com/David-Kunz/gen.nvim#usage
      {
        "<leader>]",
        ':Gen<CR>',
        mode = { "n", "v" },
        desc = "Generate text via Ollama",
      },
    },
}
