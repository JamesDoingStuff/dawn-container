# DAWN Container

A container for running [DAWN](https://dawnsci.org/) command-line tools.

## Try it out

1. Clone the repo and build the container:

```bash
podman build . -t dawn
```

2. Run and enter the container, mounting the example data directory:

```bash
podman run -it -v ./example_data:/example_data:Z dawn /bin/bash
```

3. Inside the container, run DAWN:

```bash
./dawn -consoleLog -noSplash -data @none -application uk.ac.diamond.scisoft.diffraction.powder.application.powdercalibrate -path /example_data/config.json
```
