
alias ll='ls -l'
alias lsd='ls -all -h'
alias la='ls -a'
alias l='ls -cf'

# alias pdf='mupdf'
alias mmsusb='xrandr --output DP-1 --off && xrandr --output eDP-1 --auto --output DP-1 --auto --above eDP-1'
alias mmshdmi='xrandr --output DP-1 --off && xrandr --output eDP-1 --auto --output HDMI-2 --auto --above eDP-1'
alias py38='source ~/venv/bin/activate'
alias dfu='dfu-util'
alias spotify='spotify &'
alias md='mkdir'
# alias rm='rm -rfI'
alias nv='nvim'
alias snv='sudo nvim'
alias at='atom'
alias mikr='ssh root@srv03.mikr.us -p 10449'
alias moonlight='flatpak run com.moonlight_stream.moonlight&'
alias ggl='lynx google.com'
alias ddg='lynx duckduckgo.com'
alias dsa='for each in $(ls); do du -sh "$each" ; done'
alias ds='du -sh'

#rust
alias rr='cargo run'
alias rc='cargo check'
alias rdg='cargo doc'
alias rd='cargo doc --open'
alias re='rustc --explain'
alias rb='cargo build'
alias rbr='cargo build --release'
alias rt='cargo test'

#git
alias ga='git add'
alias gc='git commit'
alias gs='git status'
alias gp='git push'

#python
alias py3='python3'
alias py2='python'
