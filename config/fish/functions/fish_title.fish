function fish_title
  pwd | awk -F / '{print $NF}'
end