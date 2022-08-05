if type -q exa
    alias ll "exa -l -g --icons"
    alias lla "ll -a"
end

alias xampp "sudo /opt/lampp/manager-linux-x64.run"

alias lamppStart "sudo systemctl start httpd mariadb"
alias lamppStop "sudo systemctl stop httpd mariadb"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Load NVM
load_nvm > /dev/stderr

# pnpm
set -gx PNPM_HOME "/home/hyujisf/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

# lvim
set -gx PATH /home/hyujisf/.local/bin/ $PATH
# lvim end

if type -q tmux
  if not set -q TMUX
    set -g TMUX tmux new-session -d -s main
    eval $TMUX
    tmux attach-session -d -t main
  end
end

set -gx COLORTERM truecolor

set -gx EDITOR nvim

# Prompt option

set -g theme_display_node yes
set -g theme_nerd_fonts yes
set -g theme_display_date yes

