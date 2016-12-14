# Background
This repo serves as the common library that used together between all groups in the
Github Code Analysis project.

# How to use
1. Add library in `stack.yaml` file
Update your project's `stack.yaml` file that includes this repo.
You have to specify the commit of this repo that want to use.
```
packages:
- '.'
- location:
    git: https://github.com/vn09/common-lib.git
    commit: c77afb89e1bb0a27bc14fea35ce6bb2faec0cbc0
```

2. Use in Haskell code
```
import CommonLib as CL
group1Data = CL.RepoDataForProcessing "https://github.com/vn09/common-lib.git" ["Haskell"]
```