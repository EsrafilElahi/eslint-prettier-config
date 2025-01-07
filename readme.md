# ESLint and Prettier Configuration for Next.js React.js Projects

This repository provides a basic setup and configuration guide for integrating ESLint and Prettier in a Next.js React.js project. ESLint helps you enforce consistent coding styles and catch common errors, while Prettier ensures code formatting consistency.

## for create pre-push file:
```
npx husky add .husky/pre-push "npm run lint"
```

### just use organize iports plugin in the specific directories : 
  - npx prettier --write --config .prettierrc-imports.json pages/ components/ lib/ styles/
### use all prettier configs in the specific directories : 
  - npx prettier --write pages/ components/ lib/ styles/
