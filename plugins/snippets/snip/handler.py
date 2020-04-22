from os import listdir
from os.path import basename, dirname, isdir, join


def handler():
    for l in listdir(dirname(__file__)):
        if not isdir(l):
            add_endpoint(join(dirname(__file__), l))


def add_endpoint(fp):
    def is_empty(lines):
        for it in lines:
            if it.startswith('snippet'):
                return False
        return True

    lines = list()
    for line in open(join(dirname(__file__), fp), 'r').readlines():
        if line.startswith('snippet') and not is_empty(
                lines) and not lines[-1].startswith('endsnippet'):
            lines.append('endsnippet\n')
        lines.append(line)
    lines.append('endsnippet\n')
    open(join(dirname(__file__), fp), 'w').write(''.join(lines))


if __name__ == "__main__":
    handler()
    # handler()
endsnippet
