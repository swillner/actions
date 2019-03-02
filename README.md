# actions
Collection of Github actions used in several repositories

- `python-run`: Run commands line by line given as a list in the `args` option in the workflow file in a Python environment (environment variables `PYTHON_VERSION` and `PIP_PACKAGES` determin the Python version and the packages to install via pip, respectively).
- `create-release`: Create a release from a tag of the form `v*` and include the corresponding changelog from `CHANGELOG.rst` (with the version as header and `~` as header type) as release description.
