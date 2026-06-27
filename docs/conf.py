# Sphinx Configuration (Alternative to MkDocs)
# For anyone who prefers Sphinx over MkDocs

project = 'DIY Electrolysis Guide'
copyright = '2026, Open-Source Community'
author = 'Open-Source Community'

# The full version, including alpha/beta/rc tags
release = '0.1.0'

extensions = [
    'sphinx.ext.duration',
    'sphinx.ext.doctest',
    'sphinx.ext.autodoc',
    'sphinx.ext.autosummary',
    'sphinx.ext.intersphinx',
    'sphinx_copybutton',
    'myst_parser',  # Markdown support
    'sphinx_design',  # Admonitions/Grids
]

templates_path = ['_templates']
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']

# MyST Markdown settings
myst_enable_extensions = [
    "amsmath",
    "attrs_inline",
    "colon_fence",
    "deflist",
    "dollarmath",
    "fieldlist",
    "html_admonition",
    "html_image",
    "tabbed",
    "tasklist",
]

# Autodoc settings
autodoc_member_order = 'bysource'
autodoc_typehints = 'description'
