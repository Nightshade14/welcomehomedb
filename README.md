# welcomehomedb
The project uses `uv` as the package manager. `uv` is a fast python manager, developed natively in Rust for Python. Ruff is also a python file formatter and linter, blazingly fast, written in Rust. 
- To install all the dependencies use the command `uv sync --extra dev`.
- To add/remove packages, `use uv add/remove <package-name>`.
- Use `uv run ruff format .` to format all the python files with `ruff`. 
