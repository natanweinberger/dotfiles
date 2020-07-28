dotfiles_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $dotfiles_dir
# Find all dotfiles in directory, do not recurse
dotfiles=`find $dotfiles_dir -type f -maxdepth 1 -name ".*"`

for DOTFILE in $dotfiles
do
	echo $DOTFILE;
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done
