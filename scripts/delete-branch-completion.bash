
function _delete_branch () {
    if [ "${#COMP_WORDS[@]}" == "2" ]; then
		COMPREPLY=($(compgen -W "$(git remote)" "${COMP_WORDS[1]}"))
    elif [ "${#COMP_WORDS[@]}" == "3" ]; then
	COMPREPLY=($(compgen -W "$(git for-each-ref --format='%(refname:short)' refs/heads)" "${COMP_WORDS[2]}"))
    fi
}

complete -F _delete_branch delete-branch.sh
