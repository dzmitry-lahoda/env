:: Removes `read only` and `hidden` from all files in directory.
:: Useful when some tools make these attributes preventing other tools to work (e.g. Notepad++ does fails to change `read only` files obtained via TFS).
:: Usage:
:: attrib-remove-all "D:/Data"
:: http://superuser.com/questions/653951/how-to-remove-read-only-attribute-recursively-on-windows-7
attrib -r -h  %1/*.* /s /d