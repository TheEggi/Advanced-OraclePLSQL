# Oracle utilities functions

OBJECT_FIRST_LINE_REGEXP = r'(?im)create\s+(?:or\s+replace\s+)?(?:force\s+)?((?:package|procedure|function|trigger|view|type)(?:\s+body)?)\s+(\w+\.)?(\w+)'

def find_entities(view):
    """
    Return all 'create or replace' type and name in the script.
    """
    results = []
    positions = view.find_all(OBJECT_FIRST_LINE_REGEXP, 0, "$1 $3", results)
    return dict((val.upper(), view.rowcol(pos.begin())[0]) for (pos, val) in zip(positions, results))


def find_body(view):
    """
    Find first package body declaration.
    """
    return view.find(r'(?im)create\s+(or\s+replace\s+)?package\s+body\s+', 0)


def getPackageName(view):
    """
    Find package name
    """
    results = []
    positions = view.find_all(OBJECT_FIRST_LINE_REGEXP, 0, "$3", results)
    return results[0];

def getObjectType(view):
    """
    returns the oracle object type based on the file extension
    """
    results = []
    positions = view.find_all(OBJECT_FIRST_LINE_REGEXP, 0, "$1", results)
    return results[0].upper()
