#! /usr/bin/env python3

import json
import pathlib
import argparse


def swift_order(path: list, schema: dict) -> dict:
    """ Generates Swift struct member order for each level of the Plotly JSON schema hierarchy. """
    order = {"/".join(path): list(schema.keys())}
    for key, item in schema.items():
        if isinstance(item, dict) and 'valType' not in item:
            order = {**swift_order([*path, key], item), **order}
    return order


if __name__ == '__main__':
    cli = argparse.ArgumentParser(prog='python order.py',
                                  description="Generate Swift structure member order from Plotly JSON schema")
    cli.add_argument('-s', '--schema', type=pathlib.Path, metavar='PLOTLY_SCHEMA', default='Assets/Plotly.json',
                     help='Input Plotly schema JSON file')
    cli.add_argument('-o', '--order', type=pathlib.Path, metavar='SWIFT_ORDER', default='Assets/Order.json',
                     help='Output Swift order JSON file')
    args = cli.parse_args()

    # Load the schema
    with args.schema.open("rt") as file:
        schema = json.load(file)

    # Parse the schema and extract order information
    assert 'traces' in schema and 'layout' in schema and 'config' in schema
    order = swift_order([], schema)

    # Write the order
    with args.order.open("wt") as file:
        schema = json.dump(order, file, indent=2)
