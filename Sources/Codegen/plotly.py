#! /usr/bin/env python3

import abc
import json
import pathlib
import argparse
import urllib.request


plotly_schema_api_endpoint = "https://api.plotly.com/v2/plot-schema?sha1="


if __name__ == '__main__':
	cli = argparse.ArgumentParser(prog='python plotly.py',
			description="Update Plotly JSON schema data from api.plotly.com")
	cli.add_argument('-s', '--schema', type=pathlib.Path, metavar='PLOTLY_SCHEMA',
					 default='Assets/Plotly.json', help='Input Plotly schema JSON file')
	args = cli.parse_args()

	# Load the schema and get the SHA1 checksum
	with args.schema.open("rt") as file:
		schema = json.load(file)
	url = plotly_schema_api_endpoint
	
	# HTTP request to the Plotly schema API endpoint
	with urllib.request.urlopen(url) as response:
		content = response.read()
		schema = json.loads(content)
		
		assert 'schema' in schema
		with args.schema.open("wt") as file:
			json.dump(schema['schema'], file, indent=4)
