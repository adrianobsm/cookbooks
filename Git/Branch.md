# Branch

Create the branch on your local machine

```sh
git branch <branchname>
```

Push the branch on remote

```sh
git push origin <branchname>
```

Switch to your new branch

```sh
git checkout <branchname>

You can see all branches created by using

```sh
git branch
```

Add a new remote for you branch

```sh
git remote add <branchname> <url>
```

Push changes from your commit into your branch

```sh
git push origin <branchname>
```

Delete a branch on your local filesytem

```sh
git branch -d <branchname>
```

Delete the branch on remote

```sh
git push origin :<branchname>
```

Delete remote branch

```sh
git push origin --delete <branchname>
```
