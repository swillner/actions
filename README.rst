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
  environment; the environment variable ``PIP_PACKAGES`` install takes
  a list of packages to install via pip. Use tags "python-2.7" and
  "python-3.7" for specific Python versions.
- `multi-python-run <multi-python-run>`_: Like the ``python-run``
  action but supports the environment variable ``PYTHON_VERSION`` as a
  (space-separated) list of Python version to run consecutively. It
  creates an inner docker container so environment variables (beyond
  the standard Github Actions variables) have to specified in the
  ``ENV`` variable.
