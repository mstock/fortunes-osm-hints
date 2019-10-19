# fortunes-osm-hints

This repository provides a set of hints and tips about OpenStreetMap, in a
fortune database format.

## Usage

### With `fortune` command

The `.dat` file can be built using the `make` command (which uses the `strfile`
command) and then must be copied, together with the `osm-hints` file, to the
directory where `fortune` searches for fortune files. This directory can be
found using the `fortune -f` command. Afterwards, running `fortune osm-hints`
should return a random OSM hint as fortune cookie.

### With Thunderbird

The `osm-hints` file can directly be used to generate email signatures using the
[signature-switch](https://addons.thunderbird.net/thunderbird/addon/signature-switch/)
extension.
