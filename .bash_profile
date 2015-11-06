
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
PATH="$HOME/Library/Python/2.7/bin:${PATH}"
export PATH



# added stat-243 AWS account

export AWS_ACCESS_KEY_ID=`grep aws_access_key_id ~/stat243-fall-2015-credentials.boto | cut -d' ' -f3`
export AWS_SECRET_ACCESS_KEY=`grep aws_secret_access_key ~/stat243-fall-2015-credentials.boto | cut -d' ' -f3`
# added by Anaconda 2.3.0 installer
export PATH="/Users/Amandazhang/anaconda/bin:$PATH"

# add git branch name before prompt,can be deleted if no longer want the bonus.
#\[\033[32m\] is blue; \[\033[00m\] is white
#\u is the name of user
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="[\[\e[0;35m\]\u\[\e[0m\]@${debian_chroot:+($debian_chroot)}\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\]]$ "



