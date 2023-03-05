# ORCT2Srv

## Building
```
docker build -t orct2srv .
```

## Running
```
docker run -d --rm -v /path/to/orct2/install/:/orct2 -p11753:11753 orct2srv
```