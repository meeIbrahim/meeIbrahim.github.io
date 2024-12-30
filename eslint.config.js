import globals from "globals";
import pluginJs from "@eslint/js";
import tseslint from "typescript-eslint";

import eslintPluginAstro from "eslint-plugin-astro";
/** @type {import('eslint').Linter.Config[]} */
export default [
  { files: ["**/*.{js,ts}"] },
  { languageOptions: { globals: globals.browser } },
  pluginJs.configs.recommended,
  ...tseslint.configs.recommended,
  ...eslintPluginAstro.configs.recommended,
  {
    files: ["**/*.astro"],
    rules: {
      "@typescript-eslint/no-explicit-any": "off",
    },
  },
];
