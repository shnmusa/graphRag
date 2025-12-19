// Module: processor.py
CREATE (m_processor:Module {module_id: "M5", name: "processor", file_path: "processor.py"})

// Functions
CREATE (f_clean:Function {func_id: "F12", name: "clean_data", file_path: "processor.py", line_number: 1, docstring: "Removes empty items."})
CREATE (f_transform:Function {func_id: "F13", name: "transform_values", file_path: "processor.py", line_number: 4, docstring: "Converts items to their length."})
CREATE (f_norm:Function {func_id: "F14", name: "normalize", file_path: "processor.py", line_number: 7, docstring: "Normalizes values."})
CREATE (f_filter:Function {func_id: "F15", name: "filter_short", file_path: "processor.py", line_number: 11, docstring: "Filters strings shorter than min_len."})

// Relationships: Module -> Function
CREATE (m_processor)-[:CONTAINS]->(f_clean)
CREATE (m_processor)-[:CONTAINS]->(f_transform)
CREATE (m_processor)-[:CONTAINS]->(f_norm)
CREATE (m_processor)-[:CONTAINS]->(f_filter)