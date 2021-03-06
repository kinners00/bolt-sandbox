# bolt_sandbox

A sandbox-type project to aid learning around Bolt and it's various functionality enabling folks to hit the ground running when beginning to use Bolt and leverage pre-built automation from the forge. 

If you've never used bolt before, start your journey below!

   - [What is Bolt?](#what-is-bolt)
   - [What are the use cases for Bolt?](#what-are-the-use-cases-for-bolt)
   - [Sorry, I don't have time to learn another language right now](#sorry-i-dont-have-time-to-learn-another-language-right-now)
   - [Any language, surely you can't be serious?](#any-language-surely-you-cant-be-serious)
   - [What's the catch? Targets must need prequisities of some kind](#whats-the-catch-targets-must-need-prequisities-of-some-kind)
   - [Agentless Connectivity](#agentless-connectivity)
   - [What platforms does Bolt support?](#what-platforms-does-bolt-support)
   - [Lets get started!](#lets-get-started)


## What is Bolt?

Bolt is an **agentless** ad-hoc automation tool that allows you to run commands, scripts, tasks, plans and puppet code to simply achieve automation goals. If you're new to automation, bolt is a great place to start. 

## What are the use cases for Bolt?

Due to the ad-hoc nature of Bolt tasks, there are some use cases where these method is particularly appropriate such as:

- Patching
- Vulnerability management
- Network device management
- Maintenance tasks:
    - Rotate logs
    - Back ups
    - Restart system services

Bolt Plans allow you to create more complex workflows with multiple steps that need to be executed in sequential order. You can use plans for things like:

- Application Deployments
- COTS application upgrades
- Patching including pre/post patching tasks

## Sorry, I don't have time to learn another language right now

You don't have to! Bolt is language agnostic, so you can use whatever you're most comfortable with.

## Any language, surely you can't be serious?

![alt text](https://raw.githubusercontent.com/kinners00/files/main/DahUIvIU0AA_EbJ.jpeg)

 You can use Bolt with any scripting/programming language beit bash, powershell, python, ruby etc. Put simply, if your target can run it locally, Bolt can handle it.

 ## What's the catch? Targets must need prequisities of some kind

 No, nothing. Unlike other tools, Bolt is built to be easy to use and flexible so you can bring your skills to the table and begin reducing manual effort, today. No python packages needed, no puppet agent.

## Agentless Connectivity

Bolt is agentless by nature and as such connects to nodes via SSH or WinRM. Credential information can be provided via bolt command or stored in an inventory file, meaning you don't need to specify targets credentials each time you run a bolt command. 

## What platforms does Bolt support?

**Workstation**

Debian, Fedora, RHEL, SLES, Ubuntu, macOS and Windows - For details on which specific versions of each OS are supported check out [this link](https://puppet.com/docs/bolt/latest/bolt_installing.html)

**Targets**

Virtually everything - if you can connect to it via SSH/WinRM, you can most likely use it as a target with bolt. This includes things like network devices etc.

## Lets get started!

Begin your bolt journey below:

[**I'm ready!**](https://github.com/kinners00/bolt_sandbox/blob/master/docs/1_intro_to_bolt.md)

