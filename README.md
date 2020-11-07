# Chordpro Docker Image

A docker image for [chordpro](https://www.chordpro.org/) using the the code from the [public repo](https://github.com/ChordPro/chordpro)

## Run it

```bash
docker pull IMAGE
# run it as you would use chordpro
docker run chordpro --version
```

## Build it

Disclaimer: no need to rebuild the image locally, you can just pull from the registry and be done with it!

```
docker build -t chordpro .
```
