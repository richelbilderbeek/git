git config --global user.email "rjcbilderbeek@gmail.com"
git config --global user.name "richelbilderbeek"
git config --global alias.praise blame

# Merge by default upon a pull
git config --global pull.rebase false

# Password every ten hours
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=36000'

