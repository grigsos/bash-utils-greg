function sshlogin() {
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/main-git-ssh
}

function awsadminprd() {
    export AWS_PROFILE=xxx
    aws sso login --no-browser
}

function precommit() {
    pre-commit run --show-diff-on-failure --color=always --all-files
}
function ga() {
    git add ${1:-.}
    git status
}
