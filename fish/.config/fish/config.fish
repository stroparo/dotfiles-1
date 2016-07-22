switch (uname)
    case Darwin
        if test -f ~/.iterm2_shell_integration.fish
          source ~/.iterm2_shell_integration.fish
        end
        # Initialize homebrew-command-not-found
        brew command command-not-found-init > /dev/null; and . (brew command-not-found-init)
end
eval (python -m virtualfish auto_activation)
status --is-interactive; and . (rbenv init -|psub)
