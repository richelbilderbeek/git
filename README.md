# git

Branch   |[GitHub Actions](https://github.com/richelbilderbeek/git/actions)                                     
---------|------------------------------------------------------------------------------------------------------
`master` |[![check-links](https://github.com/richelbilderbeek/git/actions/workflows/check_links.yaml/badge.svg)](https://github.com/richelbilderbeek/git/actions/workflows/check_links.yaml)

My favorite git commands.

## Setup

### GNU/Linux

Install `git` from the command line:

```
sudo apt install git
```

### Peregrine

`git` needs to be loaded:

```
module load git
```

### Windows

Download and install `git` from [https://git-scm.com/downloads](https://git-scm.com/downloads).

Then start 'Git Bash' for a terminal.

## General workflow

Clone this GitHub:

```
git clone https://github.com/richelbilderbeek/git
```

Update this GitHub:

```
git pull
```

Submit your change to this GitHub:

```
git add --all :/
git commit -m "Changed this"
git push
```

## My setup

```
git config --global user.email "richel@richelbilderbeek.nl"
git config --global user.name "richelbilderbeek"
```

On any new computer, I just run [setup.sh](setup.sh).

## Password once per ten hours

```
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=36000'
```

## Which issues are assigned to me?

Go to `https://github.com/issues/assigned` when logged in.

## Remove editor asking for a prompt when merging

From [here](https://stackoverflow.com/questions/36783566/git-pull-opens-vim-even-with-no-edit):

```
git config --global core.mergeoptions --no-edit
```

and

```
echo 'export GIT_MERGE_AUTOEDIT=no' >> /home/richel/.bashrc && . /home/richel/.bashrc
```
