import pyverilog.vparser.ast as vast

from node import Node
from node_type import NodeType
from circuit_graph import CircuitGraph

def parse_ast(ast):
    """Parses a Verilog abstract syntax tree into a CircuitGraph.

    Args:
        ast: the pyverilog AST

    Returns:
        CircuitGraph: the graph representation of the circuit

    """
    ast_parser = ASTParser()

    return ast_parser.parse(ast)

class ASTParser():
    def __init__(self):
        self.nodes = {}
        self.outputs = []
        self.inputs = []
        self.assign_count = 0

    def parse(self, ast):
        description = ast.children()[0]
        moduledef = description.children()[0]

        for child in moduledef.children()[2:]:
            if isinstance(child, vast.Decl):
                self._parse_decl(child)
            elif isinstance(child, vast.InstanceList):
                self._parse_instance_list(child)
            elif isinstance(child, vast.Assign):
                self._parse_assign(child)
            else:
                import pdb; pdb.set_trace()

        return CircuitGraph(self.nodes, self.outputs, self.inputs, self.assign_count)

    def _parse_decl(self, decl):
        for child in decl.children():
            if isinstance(child, vast.Input):
                self._parse_input(child)
            elif isinstance(child, vast.Output):
                self._parse_output(child)
            elif isinstance(child, vast.Wire):
                self._parse_wire(child)
            else:
                import pdb; pdb.set_trace()

    def _parse_input(self, input):
        base_name = input.name

        if input.width is not None:
            for i in range(int(input.width.lsb.value), int(input.width.msb.value) + 1):
                name = base_name + "_" + str(i)
                self.nodes[name] = Node(name, [], NodeType.INPUT)
                self.inputs.append(name)
        else:
            self.nodes[base_name] = Node(base_name, [], NodeType.INPUT)
            self.inputs.append(base_name)

    def _parse_output(self, output):
        base_name = output.name

        if output.width is not None:
            for i in range(int(output.width.lsb.value), int(output.width.msb.value) + 1):
                name = base_name + "_" + str(i)
                self.nodes[name] = Node(name, [], NodeType.OUTPUT)
                self.outputs.append(name)
        else:
            self.nodes[base_name] = Node(base_name, [], NodeType.OUTPUT)
            self.outputs.append(base_name)


    def _parse_wire(self, wire):
        name = wire.name
        self.nodes[name] = Node(name, [], NodeType.WIRE)

    def _parse_instance_list(self, ilist):
        itype = ilist.module
        instance = ilist.children()[0]

        output = self._parse_arg(instance.children()[0])
        inputs = [self._parse_arg(c) for c in instance.children()[1:]]

        if not output in self.nodes:
            self.nodes[output] = Node(output, [], "wire")

        self.nodes[output].inputs = inputs
        self.nodes[output].type = itype

    def _parse_arg(self, arg):
        if isinstance(arg.children()[0], vast.Identifier):
            return str(arg.children()[0].name)
        elif isinstance(arg.children()[0], vast.Pointer):
            return str(arg.children()[0].var) + "_" + str(arg.children()[0].ptr)
        elif isinstance(arg.children()[0], vast.IntConst):
            return int(str(arg.children()[0]))
        else:
            import pdb; pdb.set_trace()

    def _parse_assign(self, assign):
        left_arg = self._parse_arg(assign.left)
        right_arg = self._parse_arg(assign.right)

        if not left_arg in self.nodes:
            self.nodes[left_arg] = Node(left_arg, [], "wire")

        self.nodes[left_arg].inputs = [right_arg]
        self.nodes[left_arg].type = "assign"
        self.assign_count += 1
