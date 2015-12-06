## Notice

Use [BFG](https://rtyley.github.io/bfg-repo-cleaner/) instead of `git-filter-branch`.


## Usage

~~~
cd ~
git clone git@github.com:ppworks/history_rewrite.git

cd path_to_your_repository

git checkout -b new-branch-name
git filter-branch -f --tree-filter "
ruby -n ~/history_rewrite/bin/converter.rb ~/history_rewrite/passwords.txt
" new-branch-name
~~~
