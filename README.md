# tool-versions-to-env
![GitHub Actions Status](https://github.com/smartcontractkit/tool-versions-to-env-action/workflows/test%20asdf%20plugin/badge.svg?branch=main)


Is a tool to convert the variables in an asdf .tool-versions file into usable environment variables. It can grab a single variable to be used inline. It can dump the variables out to a .env file. It can dump the variables into a github action output. It outputs each library and version in the form of <library_name>_version=<version_number> for example the library in the .tool-versions file `golang 1.18` will be converted to the equivalent environment variable `golang_version=1.18`.

This is useful when you want to hold versions for certain tools and libraries in one place but use the contained version elsewhere.

# This repo contains:
- tool-versions-to-env shell script to convert .tool-versions into environment variables
- The github action workflow to use this tool in a github action
- The asdf plugin scripts to add the tool using asdf.

## Docs for the tool itself
    Requires at least 1 argument
    Argument #1: Action options
      1 = print to .env file
          Argument #2: Optional. The path to the .tool-versions file
          Argument #3: Optional. The path to the .env file to create
      2 = sent to github action output
          Argument #2: Optional. The path to the .tool-versions file
      3 = only print given variable to stdout
          Argument #2: Required. The tool version to output to stdout
          Argument #3: Optional. The path to the .tool-versions file
    
    Example for 1 or 2: tool-versions-to-env 1
    Example for 3: tool-versions-to-env 3 golang

## Docs for the Action
### This action sets .tool-versions as variables for other actions to use in the format of
    <library_name>_version=<version_number>

### Inputs

### `path_to_tool_versions`

**Required** The path to the .tool-versions file to read

### Outputs

The variables in provided .tool-versions file as variables in the form of <library_name>_version, example: golang_version

### Example usage

uses: smartcontractkit/tool-versions-to-env@v1.0.7
with:
   path_to_tool_versions: "./.tool-versions"

# Docs for the asdf plugin

[tool-versions-to-env](https://github.com/smartcontractkit/tool-versions-to-env-action) plugin for [asdf](https://github.com/asdf-vm/asdf) version manager.

## Install

```shell
asdf plugin add tool-versions-to-env https://github.com/smartcontractkit/tool-versions-to-env-action.git
```

## Usage

Check [asdf](https://github.com/asdf-vm/asdf) readme for instructions on how to install & manage versions of helmenv.
