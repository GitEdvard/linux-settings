
function _git_rebase_develop() {
	if [ "${#COMP_WORDS[@]}" == "2" ]; then
		COMPREPLY=($(compgen -W "$(git remote)" "${COMP_WORDS[1]}"))
	fi	
}

complete -F _git_rebase_develop git-rebase-develop.sh
