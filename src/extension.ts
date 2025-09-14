import * as vscode from "vscode";
// import createFolderStructure from "./commands/createFolderStructure";
import * as open from "open";
import { createDirectory, isDirectory } from "./lib/fsHelpers.js";
import CreateFolderStructure from "./commands/createFolderStructure.js";

// this method is called when your extension is activated
// your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {
  const globalTemplateCleanFolderPath = context.asAbsolutePath(".flutter_clean_feature_template");

  const createCleanStructure = vscode.commands.registerCommand(
    "createCleanStructure",
    (resource) => {
      return CreateFolderStructure(resource, globalTemplateCleanFolderPath);
    }
  );

  context.subscriptions.push(createCleanStructure);
}

// this method is called when your extension is deactivated
export function deactivate() { }