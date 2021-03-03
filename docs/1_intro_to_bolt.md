# Intro to Bolt

- [Bolt Projects](#bolt-projects)
- [Download Bolt and Sandbox Project](#download-bolt-and-sandbox-project)
- [Bolt Functions](#bolt-functions)
    - [Commands](#commands)
    - [Scripts](#scripts)
    - [Tasks](#tasks)
    - [Plans](#plans)
    - [Upload](#upload)
    - [Download](#download)

## Bolt Projects

If you've never used bolt before, the easiest way to get started is with a Bolt project. Bolt projects allow you to keep/organise your Bolt automation in a single space.

You'll use the bolt_sandbox project in the coming labs to get up and running with Bolt.

## Download Bolt and Sandbox Project

1. Download and [install bolt](https://puppet.com/docs/bolt/latest/bolt_installing.html)
2. Download or clone this repository (https://github.com/kinners00/bolt_sandbox)
3. Navigate to the ```bolt_sandbox``` directory in your shell (```bolt_sandbox-master``` if you downloaded repo)
4. Run ```bolt task show``` 

Cloned:
```
~/code/bolt_sandbox > bolt task show
```

Downloaded:
```
~/code/bolt_sandbox-master > bolt task show
```

Output:
```
bolt_sandbox::hostname     This is task shows the targets hostname via the hostname command
bolt_sandbox::mytasknix    This is a task which echos a bolt param input
bolt_sandbox::mytaskwin    This is a task which echos a bolt param input
...
...
...
```

You should see a similar output as shown above. If not:

- Quit your shell and reopen
- Ensure you are in the ```bolt_sandbox``` or ```bolt_sandbox-master``` directory

## Bolt Functions

To expedite your learning process, Lets start off learning Bolt functionality by running bolt commands on your own workstation in order to get familar with Bolt syntax without having to worry about connection information. We will of course run bolt commands on external targets in the next lab.

## Commands

```
bolt command run 'hostname' --targets localhost
```

```
Started on localhost...
Finished on localhost:
  STDOUT:
    MacBook-Pro
Successful on 1 target: localhost
Ran on 1 target in 0.01 sec
```

## Scripts

**Windows**

```
bolt script run ./scripts/hostname.ps1 --targets localhost
```

Output:
```
Started on localhost...
Finished on localhost:
  STDOUT:
    Lenovo-ThinkPad
Successful on 1 target: localhost
Ran on 1 target in 0.10 sec
```

**Linux/macOS**

```
bolt script run ./scripts/hostname.sh --targets localhost
```

Output:
```
Started on localhost...
Finished on localhost:
  STDOUT:
    MacBook-Pro
Successful on 1 target: localhost
Ran on 1 target in 0.07 sec
```

## Tasks

```
bolt task run bolt_sandbox::hostname --targets localhost
```

## Plans

```
bolt plan run bolt_sandbox::hostname --targets localhost
```

## Upload

```
bolt file upload ./files/source/upload.txt ./files/destination/  -t localhost
```

Output:
```
Started on localhost...
Finished on localhost:
  Uploaded './files/source/upload.txt' to 'localhost:./files/destination/'
Successful on 1 target: localhost
Ran on 1 target in 0.02 sec
```

## Download

```
bolt file download ./files/source/download.txt ./files/destination/ --targets localhost
```

Output:
```
Started on localhost...
Finished on localhost:
  Downloaded 'localhost:./files/source/download.txt' to '/Users/marc/code/bolt_sandbox/files/destination/localhost'
  {
    "path": "/Users/marc/code/bolt_sandbox/files/destination/localhost/download.txt"
  }
Successful on 1 target: localhost
Ran on 1 target in 0.01 sec
```

