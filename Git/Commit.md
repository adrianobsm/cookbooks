# Commit

```sh
git commit -a -m [message]
```

## Modify Specified Commit

```sh
git rebase --interactive '[hash]^' # modify pick to edit
git commit --all --amend --no-edit
git rebase --continue
```

## Rewriting Commit Messages

```sh
git log --oneline
git rebase --interactive HEAD~3 # modify pick to reword
```

## Inject Commit Between Commits

```sh
git log --oneline
git rebase --interactive HEAD~3 # modify pick to edit
git commit --all -m 'New commit'
git rebase --continue
```
