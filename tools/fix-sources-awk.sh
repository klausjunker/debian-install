awk '
/^[[:space:]]*deb / {
  line=$0
  if (line !~ /contrib/) line=line " contrib"
  if (line !~ /non-free[^-]/) line=line " non-free"
  if (line !~ /non-free-firmware/) line=line " non-free-firmware"
  print line
  next
}
{ print }
' /etc/apt/sources.list | sudo tee /etc/apt/sources.list.new

