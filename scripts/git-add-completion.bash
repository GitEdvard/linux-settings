function _git_add () {
    if [ "${#COMP_WORDS[@]}" == "2" ]; then
	COMPREPLY=($(compgen -W "$(git ls-files -m -o --exclude-standard)" "${COMP_WORDS[1]}"))
    fi
}

complete -F _git_add git-add.sh
