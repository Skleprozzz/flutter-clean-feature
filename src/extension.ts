import * as vscode from "vscode";
// import createFolderStructure from "./commands/createFolderStructure";
import * as open from "open";
import { createDirectory, isDirectory } from "./lib/fsHelpers.js";
import CreateFolderStructure from "./commands/createFolderStructure.js";

// this method is called when your extension is activated
// your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {
    const config = vscode.workspace.getConfiguration('flutterCleanFeature');
    let myStringSetting = config.get<string>('myStringSetting', '.flutter_clean_feature_template');


  let globalTemplateCleanFolderPath = context.asAbsolutePath('.flutter_clean_feature_template');


    console.log('My string setting value:', myStringSetting);

    // Можно подписаться на изменения:
    context.subscriptions.push(
        vscode.workspace.onDidChangeConfiguration(e => {
            if (e.affectsConfiguration('flutterCleanFeature.myStringSetting')) {
                myStringSetting = config.get<string>('myStringSetting', '.flutter_clean_feature_template');
                console.log('Setting changed to:', myStringSetting);
                globalTemplateCleanFolderPath = context.asAbsolutePath(myStringSetting);
            }
        })
    );

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