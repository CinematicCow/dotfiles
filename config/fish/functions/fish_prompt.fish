function fish_prompt
 #  set -l tomita_vi_mode "$TOMITA_VI"
  # echo
 
# Custom stuff
 set_color $fish_color_error
 echo -n "$USER"
 set_color normal

# Vi mode
  if test -z (string match -ri '^no|false|0$' $tomita_vi_mode)
    printf '['
    switch $fish_bind_mode
      case default
        set_color --bold red
        printf 'n'
      case insert
        set_color --bold green
        printf 'i'
      case visual
        set_color --bold $fish_color_param
        printf 'v'
    end
    set_color normal
    printf '] '
  end

# Path
set_color $fish_color_command
 printf '%s' (prompt_pwd)
 set_color normal
 set -l pwd (prompt_pwd)

echo -n " "

# Seperator
  set_color -o $fish_color_quote
  printf '⋊>'
  set_color normal

echo -n " "
end