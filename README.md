# Cups in Docker

Docker container for CUPS configured to share an HP printer.

## Build

'''
docker buildx build -t stschwark/docker-cups:<version> --platform linux/artm64 --push .
'''

## Setup

Browse to `https://<host_url>:<host_port>` and add the printer.

## Access from Linux

Add a printer with the following device URI:

	ipp://<host_url>:631/printers/<your_printer_name>

Make sure that the PPD file used by any local cups instance (e.g. `/etc/cups/ppd/<your_printer>.ppd`) has the following line commented out:

	*%cupsFilter: "application/vnd.cups-raster 0 hpcups"

The '%' character makes it a comment.
