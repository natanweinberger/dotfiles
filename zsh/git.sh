# Delete merged branches
cleanup() {
	git branch --merged | grep -v '*' | tr -d ' ' | xargs git branch -d
}