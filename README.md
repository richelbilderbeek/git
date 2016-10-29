# git

My favorite git commands.

## Setup

```
```

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

## Password once per ten hours

```
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=36000'
```

