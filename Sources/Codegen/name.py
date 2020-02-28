#! /usr/bin/env python3

import abc
import json
import pathlib
import argparse


class CamelCased(abc.ABC):
    type = ''
    capitalized = True
    container = {}

    override = dict()
    rename = dict()
    capitalize = set()

    @classmethod
    def camel_cased(cls, mashed_together: str):
        """ Generates and stores a Swift camelCasedName from Plotly mashedtogethername. """
        camel_cased = mashed_together

        if camel_cased in cls.override:
            camel_cased = cls.override[camel_cased]
        else:
            camel_cased = camel_cased.replace("_", "")
            camel_cased = camel_cased.replace(" ", "")
            for old, new in cls.rename.items():
                camel_cased = camel_cased.replace(old, new)
            for old in cls.capitalize:
                new = old.capitalize()
                camel_cased = camel_cased.replace(old, new)

            if cls.capitalized is True:
                camel_cased = camel_cased[0].upper() + camel_cased[1:]
            else:
                camel_cased = camel_cased[0].lower() + camel_cased[1:]

        cls.container[mashed_together] = camel_cased


class Object(CamelCased):
    type = 'object'
    capitalized = True
    container = {}

    override = {
        "arrangement": "Arrangement",
        "axref": "AxReference",
        "ayref": "AyReference",
        "barnorm": "BarNormalization",
        "border": "Border",
        "candlestick": "Candlestick",
        "clicktoshow": "ClickToShow",
        "colorscale": "ColorMap",
        "concentrationscales": "ConcentrationScales",
        "currentbin": "CurrentBin",
        "error_x": "XError",
        "error_y": "YError",
        "error_z": "ZError",
        "groupby": "GroupBy",
        "groupnorm": "GroupNormalization",
        "halign": "HorizontalAlign",
        "heatmapgl": "HeatmapGL",
        "histfunc": "BinningFunction",
        "histnorm": "Normalization",
        "hoveron": "HoverOn",
        "insidetextanchor": "InsideTextAnchor",
        "insidetextfont": "InsideTextFont",
        "lataxis": "LatitudeAxis",
        "lenmode": "LengthMode",
        "lonaxis": "LongitudeAxis",
        "ohlc": "OHLC",
        "operation": "Operation",
        "outsidetextfont": "OutsideTextFont",
        "pad": "Padding",
        "parcats": "ParallelCategories",
        "parcoords": "ParallelCoordinates",
        "scattergl": "ScatterGL",
        "scatterpolargl": "ScatterPolarGL",
        "splom": "ScatterPlotMatrix",
        "subplotid": "SubPlotID",
        "tickson": "TicksOn",
        "type": "`Type`",
        "valign": "VerticalAlign",
        "xref": "XReference",
        "yref": "YReference",
    }
    rename = {
        "2d": "2D", "3d": "3D",
    }
    capitalize = {
        "anchor", "area", "auto", "array", "axis", "bar", "bins", "calendar", "carpet", "cloud",
        "click", "contour", "direction", "double", "entry", "exponent", "fade", "font", "format",
        "frame", "gaps", "geo", "info", "label", "line", "list", "mapbox", "max", "mean", "menu",
        "menus", "min", "mode", "orientation", "order", "paths", "polar", "prefix", "points",
        "position", "ratio", "range", "scale", "selector", "shape", "side", "size", "sizing",
        "slider", "smooth",  "snap", "stop", "suffix", "ternary", "text", "tick", "toward",
        "tube", "type", "unit", "value"
    }


class Attribute(CamelCased):
    type = 'attribute'
    capitalized = False
    container = {}

    override = {
        "autobinx": "xAutoBin",
        "autobiny": "yAutoBin",
        "bandwidth": "bandwidth",
        "bordercolor": "borderColor",
        "bordercolorsrc": "borderColorSource",
        "borderpad": "borderPadding",
        "borderwidth": "borderWidth",
        "cliponaxis": "clipOnAxis",
        "cmid": "cMiddle",
        "colorscale": "colorScale",
        "copy_ystyle": "yCopyStyle",
        "copy_zstyle": "zCopyStyle",
        "duration": "duration",
        "error_x": "xError",
        "error_y": "yError",
        "error_z": "zError",
        "hovertext": "hoverText",
        "hovertextsrc": "hoverTextSource",
        "insidetextanchor": "insideTextAnchor",
        "insidetextfont": "insideTextFont",
        "lat": "latitude",
        "latsrc": "latitudeSource",
        "len": "length",
        "lon": "longitude",
        "lonsrc": "longitudeSource",
        "minorticklen": "minorTickLength",
        "nbinsx": "xNumBins",
        "nbinsy": "yNumBins",
        "nticks": "numTicks",
        "outlinecolor": "outlineColor",
        "outlinewidth": "outlineWidth",
        "outsidetextfont": "outsideTextFont",
        "pad": "padding",
        "pointpos": "pointPosition",
        "ref": "reference",
        "showsubunits": "showSubUnits",
        "sizeref": "sizeReference",
        "sizex": "xSize",
        "sizey": "ySize",
        "ticklen": "tickLength",
        "traceref": "traceReference",
        "tracerefminus": "traceReferenceMinus",
        "xpad": "xPadding",
        "xref": "xReference",
        "xsize": "xSize",
        "ypad": "yPading",
        "yref": "yReference",
        "ysize": "ySize",
        "zmid": "zMiddle",
    }
    rename = {
        "bgcolor": "BackgroundColor", "hoveron": "HoverOn", "src": "Source", "vals": "Values"
    }
    capitalize = {
        "area", "bar", "bin", "click", "contour", "displayed", "entry", "frame", "grid", "margin",
        "menu", "min", "plots", "revision", "scale", "select", "style", "text", "title", "access",
        "active", "align", "alpha", "anchor", "angle", "array", "arrow", "aspect", "attribution",
        "auto", "axes", "axis", "background", "bar", "bins", "bound", "bounds", "calendar",
        "capture", "carpet", "category", "cheater", "cloud", "coast", "color", "count",
        "countries","current", "dash", "data", "depth", "direction", "display", "distance",
        "divider", "dividers", "double", "edit", "epsilon", "events", "expand", "fade",
        "font", "format", "funnel", "gap", "geo", "group", "half", "head", "hover", "hull",
        "icon", "index", "info", "item", "json", "label", "lakes", "land", "layer", "legend",
        "length", "line", "list", "logo", "lower", "mapbox", "marker", "max", "mean", "mode",
        "name", "norm", "normals", "ocean", "offset", "order", "orientation", "padding", "path",
        "paths", "pie", "plot", "point", "points", "polar", "position", "prefix", "range",
        "ratio", "rivers", "scales", "selection", "selector", "shading", "shape", "shift",
        "show", "side", "size", "sizing", "slider", "slope", "smooth", "snap", "source",
        "spike", "spikes", "standoff", "stop", "suffix", "sunburst", "surface", "template",
        "theta", "thickness", "thousands", "tick", "token", "toward", "trace", "treemap", "tube",
        "type", "unit", "upper", "value", "vertex", "waterfall", "way", "width", "zoom"
    }


class Primitive(CamelCased):
    type = 'primitive'
    capitalized = False
    capitalize = {"contour", "mode"}


class Enumerated(CamelCased):
    type = 'enumerated'
    capitalized = False
    container = {}

    override = {
        "": "none",
        "-": "auto",
        "afterall": "afterAll",
        "B": "B",
        "E": "E",
        "ISO-3": "ISO3",
        "SI": "SI",
        "USA-states": "statesOfUSA",
        "albers usa": "albersUSA",
        "bottom to top": "bottomToTop",
        "bowtie": "bowTie",
        "bowtie-open": "bowTieOpen",
        "false": "`false`",
        "hsl": "HSL",
        "hsla": "HSLA",
        "onoff": "onOff",
        "onout": "onOut",
        "reset+autosize": "resetAndAutoSize",
        "rgb": "RGB",
        "rgba": "RGBA",
        "tonext": "toNext",
        "tonextx": "toNextX",
        "tonexty": "toNextY",
        "top to bottom": "topToBottom",
        "toself": "toSelf",
        "tozerox": "toZeroX",
        "tozeroy": "toZeroY",
        "true": "`true`",
        # Contour Operations (*/contours/operation)
        "=": "equalTo", "!=": "notEqualTo",
        "<": "lessThan", "<=": "lessEqualThan",
        ">": "greaterThan", ">=": "greaterEqualThan",
        "[]": "insideInclusive", "()": "insideExclusive",
        "[)": "insideInclusiveExclusive", "(]": "insideExclusiveInclusive",
        "][": "outsideInclusive",  ")(": "outsideExclusive",
        "](": "outsideInclusiveExclusive", ")[": "outsideExclusiveInclusive",
        "{}": "presentInSet", "}{": "notPresentInSet",
        # Treemap Pathbar (*/pathbar/edgeshape)
        "|": "bar", "/": "forwardSlash", "\\": "backwardSlash",
        # SubPlotID regexps
        "/^x([2-9]|[1-9][0-9]+)?$/": "xSubPlotID", "/^y([2-9]|[1-9][0-9]+)?$/": "ySubPlotID"
    }
    rename = {
        "-se": "SE", "-sw": "SW", "-ne": "NE", "-nw": "NW", "-ns": "NS"
    }
    capitalize = {
        "america", "ascending", "bottom", "category", "center", "clockwise", "conic",
        "conformal", "dash", "descending" "density",  "dot", "down",  "earth", "equidistant",
        "first", "json",  "size", "left", "names", "only", "negative",  "mercator",  "others",
        "outliers", "plot", "right", "ticks", "traces", "zero"
    }

    @classmethod
    def camel_cased(cls, mashed_together: Object):
        if type(mashed_together) == int:
            return

        if type(mashed_together) == bool:
            mashed_together = str(mashed_together).lower()
            cls.container[mashed_together] = cls.override[mashed_together]
            return

        if type(mashed_together) == str:
            if mashed_together in cls.override:
                cls.container[mashed_together] = cls.override[mashed_together]
                return

            camel_cased = mashed_together
            for old, new in cls.rename.items():
                camel_cased = camel_cased.replace(old, new)
            for old in cls.capitalize:
                new = old.capitalize()
                camel_cased = camel_cased.replace(old, new)
            if '-' in camel_cased:
                camel_pieces = [piece[:1].upper() + piece[1:] for piece in camel_cased.split('-')]
                camel_cased = ''.join(camel_pieces)
            if ' ' in camel_cased:
                camel_pieces = [piece[:1].upper() + piece[1:] for piece in camel_cased.split(' ')]
                camel_cased = ''.join(camel_pieces)

        cls.container[mashed_together] = camel_cased[:1].lower() + camel_cased[1:]


class FlagList(CamelCased):
    type = 'flaglist'
    capitalized = False
    container = {}

    override = {
        "false": "`false`",
        "gl3d": "GL3D",
        "lat": "latitude",
        "lon": "longitude",
        "true": "`true`"
    }
    capitalize = {
        "axis", "bar", "bars", "color", "current", "draw", "entry", "initial", "layout", "path",
        "parent", "previous", "range", "root", "style", "total"
    }

    @classmethod
    def camel_cased(cls, mashed_together: Object):
        if type(mashed_together) == bool:
            mashed_together = str(mashed_together).lower()
            cls.container[mashed_together] = cls.override[mashed_together]
        else:
            super().camel_cased(mashed_together)



def swift_names(path: list, schema: dict):
    """ Generates Swift names for each object type from Plotly JSON schema. """
    for name, item in schema.items():
        if not isinstance(item, dict):
            Primitive.camel_cased(name)
            continue

        if 'valType' in item:
            if item['valType'] == 'enumerated':
                Object.camel_cased(name)
                for value in item['values']:
                    Enumerated.camel_cased(value)
            elif item['valType'] == 'flaglist':
                Object.camel_cased(name)
                for flag in item['flags'] + item.get('extras', []):
                    FlagList.camel_cased(flag)
            else:
                Attribute.camel_cased(name)
            continue

        Object.camel_cased(name)
        swift_names([*path, name], item)


if __name__ == '__main__':
    cli = argparse.ArgumentParser(prog='python names.py',
            description="Generate Swift names for every Plotly JSON schema object")
    cli.add_argument('-s', '--schema', type=pathlib.Path, metavar='PLOTLY_SCHEMA',
                     default='Assets/Plotly.json', help='Input Plotly schema JSON file')
    cli.add_argument('-n', '--name', type=pathlib.Path, metavar='SWIFT_NAME',
                     default='Assets/Name.json', help='Output Swift names JSON file')
    args = cli.parse_args()

    # Load the schema
    with args.schema.open("rt") as file:
        schema = json.load(file)

    # Parse the schema and extract names
    assert 'traces' in schema and 'layout' in schema and 'config' in schema
    swift_names([], schema)
    names = {obj.type: obj.container for obj in [Object, Attribute, Primitive, Enumerated, FlagList]}

    # Write names
    with args.name.open("wt") as file:
        json.dump(names, file, indent=2, sort_keys=True)
