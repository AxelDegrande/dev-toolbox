# Python Cheatsheet

## Workflow of virtual environment
**You don't put .venv in Git. You put a description of the packages in Git.**

Then, when you clone the project on another computer, you create a new .venv and install the packages from that description.

### 1. PC 1
1. Create environment

```
python3 -m venv .venv
```

2. Activate

```
source .venv/bin/activate
```

3. Install packages
```
pip install requests flask
```

4. Save dependencies

```
pip freeze > requirements.txt
```

5. Git
```
git add .
git commit -m "Update dependencies"
git push
```
### PC 2
1. Pull repository
```
git pull
```

2. Create environment

```
python3 -m venv .venv
```

3. Activate

```
source .venv/bin/activate
```

4. Install project dependencies

```
pip install -r requirements.txt
```
