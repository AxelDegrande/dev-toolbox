# Cheatsheet NodeRED

## Install
[NodeRED Getting Started](https://nodered.org/docs/getting-started/)

## Configuration
Username: ***
Password: ***

## Run NodeRED
```
$ node-red
```

## NodeRED project to GitHub project
Use this command if you want to copy your nodeRED project to your GitHub repo that is stored somewhere else:

```
$ cp -r .node-red/project/YOUR_PROJECT
```

The other way: GitHub repo --> NodeRED directory
```
cp -r /Projects/YOUR_GITHUB_REPO/nodeRED/* ~/.node-red/projects 
```

## Access NodeRED
In browser type: http://localhost:1880

## Forgotten Username or Password?
1. To find your username. Got to

```
$ nano .node-red/settings.js
```

There you can find your username and passward hash

2. To get a new password
Run command:

```
$ node-red admin hash-pw
```
Write new pasword and copy the hash-key.

Change the current hash-key in the settings.js file:

```
nano .node-red/settings.js
```

