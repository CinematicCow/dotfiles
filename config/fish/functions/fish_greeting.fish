function fish_greeting
    fortune|cowsay -f (ls /usr/share/cowsay/cows/|shuf -n 1)|lolcat
end
