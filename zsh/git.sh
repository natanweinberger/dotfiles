# Delete merged branches
cleanup() {
	git branch --merged | grep -v '^*' | xargs git branch -d
}

# Get the JIRA ticket ID from the current branch name
jira() {
    git branch |
    grep "*" |   # Find the current branch
    tr -d '*' | tr -d ' ' |   # Trim the non-branch name characters
    grep -Eo "\w+/DE-\d+" |   # Isolate the ticket ID
    sed -e 's/\//\(/g' -e 's/$/)/'  # Convert feat/DE-### to feat(DE-###)
}

# Run `git commit` with the ticket ID prefix
commit() {
    [[ -n $(jira) ]] &&  # If the branch has a ticket ID, attempt to commit
    git commit -m "$(jira): $1" 
}
