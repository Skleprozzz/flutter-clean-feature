import * as vscode from "vscode";
import createFileOrDirectory from "./createFileOrDirectory.js";
import { FileSettings, StringReplaceTuple } from "../types/index.js";
import { openAndSaveFile } from "../lib/vscodeHelpers.js";

const createStructure = async (
  replaceValues: StringReplaceTuple[],
  structure: FileSettings[] | undefined,
  resource?: vscode.Uri,
  omitParentDirectory = false
) => {
  if (structure) {
    const wsedit = new vscode.WorkspaceEdit();
    const fileUris = await Promise.all(
      structure.map(
        createFileOrDirectory(
          replaceValues,
          resource?.fsPath,
          omitParentDirectory,
          wsedit
        )
      )
    );

    await vscode.workspace.applyEdit(wsedit);
    await Promise.all(fileUris.map(openAndSaveFile));

    return "done";
  }
};

export default createStructure;