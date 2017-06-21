As I always forget how to initiate any project, this is my guideline.

# Already have files

1. Create new repository. For GitHub select [+ New Repository](https://github.com/new)
2. Once you hace created your repository (it does not matter if you have created a README.md file) just execute the following commands:
``` sh
git init
git add *
git commit -m "first commit"
git remote add origin REPOSITORY
git pull --rebase REPOSITORY `# If you already have files like README.md on your repository`
git push -u origin master
```
Where <kbd>REPOSITORY</kbd> is your repository address (It is irrelevant if you setup your git repository by HTTPS or SSH).
