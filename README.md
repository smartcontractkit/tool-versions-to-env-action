# This action sets .tool-versions as variables for other actions to use in the format of
    <library_name>_version=version_number

## Inputs

## `path_to_tool_versions`

**Required** The path to the .tool-versions file to read

## Outputs

The variables in provided .tool-versions file as variables in the form of <library_name>_version, example: golang_version

## Example usage

uses: smartcontractkit/tool-versions-to-env@v1
with:
   path_to_tool_versions: "./.tool-versions"
