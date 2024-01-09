import * as vscode from "vscode";
import { StringReplaceTuple } from "../types";

export const getReplaceValueTuples = (variableNames: string[]) => {
  return variableNames.reduce(
    async (acc: Promise<StringReplaceTuple[]>, variableName) => {
      const prevAcc = await acc;
      const [name, defaultValue] = variableName
        .split("=>")
        .map((val) => val.trim());

      let prompt = `Enter Replace value to replace custom variable <${name}>`;
      let value;

      if (name === "FTName") {
        prompt = `Enter the name of your new component`;
      }
      if (defaultValue) {
        value = defaultValue;
      }
      const inputValue = await vscode.window.showInputBox({
        prompt,
        value,
        validateInput: text => {
          //^[a-z0-9_)]{5,40}$
          const ok: boolean = RegExp('^(([a-z0-9(_))]{2,40})+[a-z0-9]?)$').test(text);

          return ok ? null : 'only camelcase with length [2-40]';
        }
      });
      //always return a string
      return prevAcc.concat([[name, inputValue || ""]]);
    },
    Promise.resolve([])
  );
};