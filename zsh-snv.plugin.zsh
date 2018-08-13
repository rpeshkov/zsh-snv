[[ -z "$NVM_DIR" ]] && export NVM_DIR="$HOME/.nvm"

_snv_load_nvm() {
    [[ -s "$NVM_DIR/nvm.sh" ]] && \. "$NVM_DIR/nvm.sh"
}

nvm() {
    unset -f nvm > /dev/null 2>&1
    _snv_load_nvm
    nvm "$@"
}

if [[ -z "$SNV" ]]; then
    echo "SNV not defined. Loading full NVM"
    _snv_load_nvm
elif [[ ! -d "$NVM_DIR/versions/node/$SNV/bin/" ]]; then
    echo "SNV is incorrect. Loading full NVM"
    _snv_load_nvm
else
    export PATH="$NVM_DIR/versions/node/$SNV/bin/:$PATH"
fi

true
