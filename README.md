# Cups in Docker

Docker container for CUPS configured to share an HP printer in a local network.

## Build

```
docker buildx build -t stschwark/docker-cups:<version> --platform linux/arm64 --push .
```

## Setup

Browse to `https://<host_url>:<host_port>` and add the printer.

## Access from Linux

Add a printer with the following device URI:

	ipp://<host_url>:631/printers/<your_printer_name>

The admin user/password for the Cups server is printeradmin/printeradmin

Make sure that the PPD file used by any local cups instance (e.g. `/etc/cups/ppd/<your_printer>.ppd`) has the following line commented out:

	*%cupsFilter: "application/vnd.cups-raster 0 hpcups"

The '%' character makes it a comment.
