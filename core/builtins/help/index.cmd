:: Name: help
:: Description: Displays all valid ZMD commands, and fetches info about specific commands.
:: Usage: help <command name>
:: Author: Beef

echo === ZMD %i18nAllCommands% ===
echo === %i18nBuiltins% ===
for /R %core%\builtins\ %%f in (*.manifest) do ( 
        type %%f
)
echo.
echo === %i18nPlugins% ===
for /R %addons%\plugins\ %%f in (*.manifest) do ( 
        type %%f
)