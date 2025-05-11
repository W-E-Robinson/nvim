local function setup_clipboard()
    local has = vim.fn.has
    local executable = vim.fn.executable
    local getenv = os.getenv

    if has("mac") == 1 then
        vim.g.clipboard = {
            copy = { ['+'] = 'pbcopy', ['*'] = 'pbcopy' },
            paste = { ['+'] = 'pbpaste', ['*'] = 'pbpaste' },
            cache_enabled = 0,
        }
    elseif has("wsl") == 1 then
        vim.g.clipboard = {
            copy = { ['+'] = 'clip.exe', ['*'] = 'clip.exe' },
            paste = {
                ['+'] = 'powershell.exe -noprofile -command Get-Clipboard',
                ['*'] = 'powershell.exe -noprofile -command Get-Clipboard',
            },
            cache_enabled = 0,
        }
    elseif getenv("WAYLAND_DISPLAY") and executable("wl-copy") == 1 then
        vim.g.clipboard = {
            copy = { ['+'] = 'wl-copy', ['*'] = 'wl-copy' },
            paste = {
                ['+'] = 'wl-paste --no-newline',
                ['*'] = 'wl-paste --no-newline',
            },
            cache_enabled = 0,
        }
    elseif executable("xclip") == 1 then
        vim.g.clipboard = {
            copy = {
                ['+'] = 'xclip -selection clipboard',
                ['*'] = 'xclip -selection primary',
            },
            paste = {
                ['+'] = 'xclip -selection clipboard -o',
                ['*'] = 'xclip -selection primary -o',
            },
            cache_enabled = 0,
        }
    elseif executable("xsel") == 1 then
        vim.g.clipboard = {
            copy = {
                ['+'] = 'xsel --clipboard --input',
                ['*'] = 'xsel --primary --input',
            },
            paste = {
                ['+'] = 'xsel --clipboard --output',
                ['*'] = 'xsel --primary --output',
            },
            cache_enabled = 0,
        }
    end
end

setup_clipboard()
