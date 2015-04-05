XML Linter
=====

**xmllint** makes it easier to lint and schema validate XML files.

Setup
-----

It uses docker to make the setup simpler, so you will not have to install all the dependencies manually.

All you have to do is:

* [Install docker](https://docs.docker.com/installation/)
* Add your local user to docker group:
```bash
sudo usermod -aG docker <your_user>
```
* Pull image ([from Hub](https://registry.hub.docker.com/u/mribeiro/xmllint)):

```bash
docker pull mribeiro/xmllint
```
or build locally using this repo (which is way much cooler):

```bash
make build-image
```

Usage:
-----
Use it as you would use the xmllint command.

Examples:

```bash
# Show xmllint help
docker run -i --rm mribeiro/xmllint --help

# Lint foo.xml to stdout
docker run -i --rm -v $PWD:/data mribeiro/xmllint foo.xml

# Validate foo.xml against foo.xsd schema
docker run -i --rm -v $PWD:/data mribeiro/xmllint --schema foo.xsd foo.xml
```

