# DevOps Notes App

## Project Goal

This repository documents my journey of learning DevOps through hands-on practice, real-world projects, and practical implementation.

The goal is to develop a strong understanding of Linux, system administration, automation, containerization, CI/CD pipelines, cloud infrastructure, and deployment workflows.

I will maintain daily learning notes, practical exercises, commands, and project implementations throughout this journey.

---

## Learning Roadmap

- Linux Fundamentals and System Administration
- Git and GitHub
- Shell Scripting and Automation
- Docker and Containerization
- CI/CD Pipelines
- AWS and Cloud Computing
- Kubernetes and Container Orchestration
- Monitoring and Logging
- Infrastructure as Code
- Real-world DevOps Projects

---

# Day 1 – Linux Fundamentals and GitHub Setup

## 1. Environment Setup

Installed and configured Ubuntu Linux using Windows Subsystem for Linux (WSL).

### What I Learned

- What Linux is and why it is widely used in servers and DevOps environments.
- How WSL allows Linux distributions to run directly on Windows.
- How to access Ubuntu through Windows Terminal and PowerShell.
- How to start and access an existing Ubuntu distribution after restarting Windows.
- Basic understanding of the Linux terminal and shell prompt.
- How to execute Linux commands without depending on a graphical interface.

## 2. Linux Directory Navigation

Learned how to navigate the Linux filesystem using terminal commands.

| Command | Description |
|---|---|
| `pwd` | Displays the current working directory. |
| `ls` | Lists files and directories. |
| `ls -l` | Displays files with detailed information. |
| `ls -la` | Displays all files, including hidden files. |
| `cd` | Changes the current directory. |
| `cd ..` | Moves to the parent directory. |
| `cd ~` | Navigates to the home directory. |
| `mkdir` | Creates a new directory. |

### Practical Implementation

- Created directories using `mkdir`.
- Navigated between directories using `cd`.
- Checked the current location using `pwd`.
- Listed files and directories using `ls`.
- Explored hidden files using `ls -la`.

## 3. Linux File Management

Practiced creating, copying, moving, renaming, and deleting files.

| Command | Description |
|---|---|
| `touch file.txt` | Creates an empty file. |
| `cp file.txt backup.txt` | Copies a file. |
| `mv old.txt new.txt` | Renames or moves a file. |
| `rm file.txt` | Deletes a file. |
| `cat file.txt` | Displays file contents. |
| `echo "text" > file.txt` | Writes content into a file. |

### Practical Implementation

- Created multiple text files using `touch`.
- Added content to files using `echo`.
- Read file contents using `cat`.
- Created backup files using `cp`.
- Renamed files using `mv`.
- Removed unnecessary files using `rm`.

## 4. Reading and Editing Files

Learned how to read and modify files directly from the Linux terminal.

### Commands and Tools

- `cat` – Displays the complete contents of a file.
- `less` – Reads large files page by page.
- `nano` – Terminal-based text editor for creating and editing files.
- `vim` – Terminal-based text editor (to be explored further).

### Nano Editor Shortcuts

| Shortcut | Action |
|---|---|
| `Ctrl + O` | Save the file. |
| `Enter` | Confirm the filename. |
| `Ctrl + X` | Exit Nano. |

### Practical Implementation

- Created text files using Nano.
- Added and modified file contents.
- Saved changes directly from the terminal.
- Viewed saved content using `cat` and `less`.

## 5. Git and GitHub Fundamentals

Learned the basics of version control and repository management.

### Concepts Learned

- What Git is and why version control is important.
- Difference between Git and GitHub.
- What a repository is.
- What commits represent.
- How Git tracks changes in files.
- How local repositories connect to remote GitHub repositories.

### Important Git Commands

| Command | Description |
|---|---|
| `git --version` | Checks the installed Git version. |
| `git config` | Configures Git username and email. |
| `git clone` | Downloads a remote repository. |
| `git status` | Displays the current repository status. |
| `git add` | Stages changes for a commit. |
| `git commit` | Saves changes in Git history. |
| `git push` | Uploads local commits to GitHub. |

## 6. GitHub Project Setup

Created a GitHub repository named `devopsnotes-app`.

### Work Completed

- Created a new GitHub repository.
- Cloned the repository into the Ubuntu environment.
- Created a README.md file.
- Documented the project goal and learning roadmap.
- Practiced Git staging and committing.
- Prepared the repository for pushing changes to GitHub.

---

## Day 1 Key Takeaways

By completing Day 1, I gained practical exposure to:

1. Linux environment setup using WSL.
2. Navigating the Linux filesystem through the terminal.
3. Managing files and directories using Linux commands.
4. Reading and editing files without a graphical editor.
5. Understanding basic Git version control concepts.
6. Creating and managing a GitHub repository.

---

