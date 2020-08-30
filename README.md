# chilli-cook-book
Recipes for things to do with Chillies

A repo to add recipes for things to do with chillies
## Quick Start
How to compile the book locally

### crowbook is installed locally:
```shell
$ cd book

$ crowbook chilli-cookbook.book --to pdf --verbose
```

### crowbook not installed locally:
```shell
$ docker build -t bt:latest .

$ docker run -it -v "${pwd}/book":/book bt:latest crowbook chilli-cookbook.book
```

## CONTRIBUTING
- Follow the template/style guide (recipes/tempalte.md)
- One MD file per recipe


## TODO:
- Cleanup initial raw recipes
- Define a MD Template for all recipes
- setup folders for different recipe types (brine fermentation, mash fermentation, dry chilli salts, etc...)
- Create a script to generate a PDF from the MD
