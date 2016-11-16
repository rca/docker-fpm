# fpm-container
Containerized Effing Package Manager, MIT licensed as FPM itself

## Usage

To use FPM within the container to package up some files, use a volume mount, for example, the command below mounts the current directory into `/src` in the container, sets the file location to `/src/files`, which translates to `$(pwd)/files` on your native system, and uses `-p` to specify the output path, also `/src` (i.e. the current directory):

```
docker run -t -i --rm -v $(pwd):/src roberto/fpm-container fpm -C /src/files -s dir -t deb -a all -n mypackage -v 1.0.0 -p /src/ etc/
```

Once the command runs, voila:

```
$ ls *.deb
mypackage_1.0.0_all.deb
```
