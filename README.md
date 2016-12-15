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
    commit: fcce49e61be4c345e9936dc08cf5d3d64574f901
```
2. Add lib in `cabal` file
```
library
  hs-source-dirs:      src
  exposed-modules:     Lib
  build-depends:       base >= 4.7 && < 5
                     , common-lib
```
3. Use in Haskell code
```
import CommonLib as CL
group1Data = CL.RepoDataForProcessing "https://github.com/vn09/common-lib.git" ["Haskell"]
```