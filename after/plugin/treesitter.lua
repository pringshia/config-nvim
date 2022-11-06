require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "rust", "bash", "css", "make", "dockerfile", "gitattributes", "gitignore", "help", "javascript", "json", "json5", "make", "markdown", "markdown_inline", "prisma", "regex", "sql", "swift", "tsx", "typescript", "vim", "yaml" },
    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

