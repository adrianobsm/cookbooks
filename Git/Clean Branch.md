# Clean Branch

```sh
git clone --no-checkout [repo]
git checkout --orphan gh-pages
git rm -rf .
git clean -fdx
git push origin gh-pages
```
