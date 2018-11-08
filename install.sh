dotfiles_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Find all dotfiles in directory, do not recurse
dotfiles=`find $dotfiles_dir -type f -maxdepth 1 -name ".*"`

for DOTFILE in $dotfiles
do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done
