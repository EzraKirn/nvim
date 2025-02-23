if status is-interactive
    # Check if inside tmux already
    if not set -q TMUX
        # Try to attach to an existing session, or create a new one named 'main'
        if tmux attach-session -t main 2>/dev/null
            # Attached successfully
        else
            tmux new-session -s main
        end
    end
end
set -gx TERM "tmux-256color"
set -gx COLORTERM "truecolor"

