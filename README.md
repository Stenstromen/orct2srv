# ORCT2Srv

## Building
```
docker build -t orct2srv .
```

## Running
```
docker run -d --rm -v /path/to/orct2/install/:/orct2 -e SAVEFILE=/orct2/savefile.SC6 -p11753:11753 orct2srv
```

## Required ENV
```
/path/to/orct2/install/ = Host path to RCT2 installation
SAVEFILE                = STRING (Container path)
```