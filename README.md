<div align="center">
<h1><strong>fivem-vue-template</strong></h1>
<p>Simple CfxLua &amp; Vue boilerplate for FiveM.
<br>
This repository is a simple Vue template with a couple utils to facilite use between CfxLua and Vue. Please open a pull request if you find a vulnerability, have a concern or feature.
</p>
</div>

## Dependencies
- [Yarn](https://yarnpkg.com/getting-started/install)
- [Node +v10.6](https://nodejs.org/en/)

## Getting Started
If you are constantly uploading your resource to Github, it is recommend it that you clone it to your server resources. Read the [Dev Workflow](#development-workflow) to install all dependencies needed.
```shell
# Cloning repository
git clone https://github.com/username/reponame.git

# Checking changes made
git status

# Checking file differences
git diff

# Push new changes to repository
git add . # Adds all files (except ones in .gitignore)
git commit -m "title" -m "description" # -m "description" is not needed. Title satisfies parameters.
git push
```

## Development Workflow
Here you can find commands to setup the Vue environment. You will need to perform these commands in the `/web` directory. You can do this by doing `cd web` in an opened cmd.

```shell
# Installs all dependencies
yarn install

# Compiles and hot-reloads for development
yarn serve

# Compiles and minifies for production
yarn build

# Lints and fixes files
yarn lint
```

## Acknowledgements
- [Project Error React Template](https://github.com/project-error/fivem-react-boilerplate-lua)