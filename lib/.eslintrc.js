'use strict';

module.exports = {
  env: {
    node: true,
    es2021: true,
    browser: true,
    jest: true,
  },
  extends: [
    'eslint:recommended',
    'plugin:react/recommended',
    'plugin:react-hooks/recommended',
    'plugin:prettier/recommended',
    'prettier/react',
  ],
  parser: '@babel/eslint-parser',
  parserOptions: {
    ecmaFeatures: {
      jsx: true,
    },
    ecmaVersion: 'esnext',
    sourceType: 'module',
  },
  plugins: ['@babel', 'react', 'prettier'],
  rules: {
    'prettier/prettier': 'off',
    'react/react-in-jsx-scope': 'off',
    'no-console': 'warn',
    quotes: [
      'error',
      'single',
      { allowTemplateLiterals: true, avoidEscape: true },
    ],
    'react/display-name': 'off',
  },
  settings: {
    react: {
      version: 'detect',
    },
  },
  ignorePatterns: ['./public/', './.next/'],
  globals: {
    logger: 'readonly',
  },
};
