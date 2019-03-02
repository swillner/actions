Github Actions
==============

Collection of Github actions used in several repositories

- `python-run`__: Run commands line by line given as a list in the
  ``args`` option in the workflow file in a Python environment
  (environment variables ``PYTHON_VERSION`` and ``PIP_PACKAGES``
  determin the Python version and the packages to install via pip,
  respectively).
- `create-release`__: Create a release from a tag of the form ``v*``
  and include the corresponding changelog from ``CHANGELOG.rst`` as
  release description. This must be in ReStructuredText format with
  the version (without "v") as header; changes must be given as a
  "-"-list.
