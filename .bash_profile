PATH=${PATH}:~/Applications/CMake.app/Contents/bin:~/.npm-global/bin

alias bp="nano ~/.bash_profile"
alias br=". ~/.bash_profile"

xcode() {
  proj=$(ls -d *.xcodeproj/ 2>/dev/null)
  wkspc=$(ls -d *.xcworkspace/ 2>/dev/null)
  if [ -n "$wkspc" ]; then
    open -a Xcode "$wkspc"
  elif [ -n "$proj" ]; then
    open -a Xcode "$proj"
  else
    echo "No Xcode project detected."
  fi
}

gc() {
        git add .
        git commit -m "$*"
}

gall() {
	branchName=$(git rev-parse --abbrev-ref HEAD)
	git pull origin $branchName
	gc "$*"
	git push origin $branchName
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/d101985/google-cloud-sdk/path.bash.inc' ]; then . '/Users/d101985/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/d101985/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/d101985/google-cloud-sdk/completion.bash.inc'; fi
