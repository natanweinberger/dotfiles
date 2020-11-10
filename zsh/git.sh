# Delete merged branches
cleanup() {
	git branch --merged | grep -v '^*' | xargs git branch -d
}