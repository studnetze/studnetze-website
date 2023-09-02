# Studnetze Website
This repository will replace the existing Dokuwiki at studentennetze.de. Currently, the migration of the articles from the old wiki is still taking place and everything is still in progress.

## Deploy
There is an automatic deploy to <https://studentnetworks.eu> after a push to the `main` branch.

## Build on your own
Create Python virtuall environment and install Material for MkDocs via `pip`:
```
pip install mkdocs-material
```


You can than preview the site as you write
```
mkdocs serve 
```
or build the static files
```
mkdocs build
```