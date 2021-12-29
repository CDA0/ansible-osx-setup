# Managed by ansibile

if status is-interactive
and not set -q TMUX

  set -g TMUX tmux new-session -d -s base
  eval $TMUX
  tmux attach-session -d -t base

  # Work specific config
  if test -f $HOME/.config/fish/local.fish
    source $HOME/.config/fish/local.fish
  end

end
