Github Actions
==============

Collection of Github actions used in several repositories

- `create-release <create-release>`_: Create a release from a tag of
  the form ``v*`` and include the corresponding changelog from
  ``CHANGELOG.rst`` as release description. This must be in
  ReStructuredText format with the version (without "v") as header;
  changes must be given as a "-"-list.
- `filter-branch <filter-branch>`_: Filter for the branch given in the
  ``args`` option, regardless of what git ref is given by the event
  (useful, for instance, for triggers other than ``push``).
- `python-run <python-run>`_: Run commands line by line given as a
  list in the ``args`` option in the workflow file in a Python
  environment (environment variables ``PYTHON_VERSION`` and
  ``PIP_PACKAGES`` determin the Python version and the packages to
  install via pip, respectively).
