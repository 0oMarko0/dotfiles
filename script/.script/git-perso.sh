echo "switchin to personal github account"

eval "$(ssh-agent -s)" > /dev/null

ssh-add -D
ssh-add ~/.ssh/perso
