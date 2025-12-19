// Module: util.py
CREATE (m_util:Module {module_id: "M2", name: "util", file_path: "util.py"})

// Functions
CREATE (f_debug:Function {func_id: "F4", name: "debug", file_path: "util.py", line_number: 1, docstring: "Prints debug message."})
CREATE (f_upper:Function {func_id: "F5", name: "to_upper", file_path: "util.py", line_number: 4, docstring: "Converts text to uppercase."})
CREATE (f_numeric:Function {func_id: "F6", name: "is_numeric", file_path: "util.py", line_number: 7, docstring: "Checks if text is numeric."})

// Relationships: Module -> Function
CREATE (m_util)-[:CONTAINS]->(f_debug)
CREATE (m_util)-[:CONTAINS]->(f_upper)
CREATE (m_util)-[:CONTAINS]->(f_numeric)