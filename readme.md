# ESLint and Prettier Configuration for Next.js React.js Projects

This repository provides a advance setup and configuration guide for integrating ESLint and Prettier and Husky in a Next.js React.js project. ESLint helps you enforce consistent coding styles and catch common errors, while Prettier ensures code formatting consistency.

## for create pre-push file:
```
npx husky add .husky/pre-push "npm run lint"
```

### just use organize imports plugin in the specific directories : 
  - npx prettier --write --config .prettierrc-imports.json pages/ components/ lib/ styles/
### use all prettier configs in the specific directories : 
  - npx prettier --write pages/ components/ lib/ styles/
