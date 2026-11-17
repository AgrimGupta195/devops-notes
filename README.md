# DevOps Notes App

## Project Goal

This repository documents my journey of learning DevOps through hands-on practice, real-world projects, and practical implementation.

My goal is to develop strong skills in Linux, system administration, automation, containerization, CI/CD, cloud infrastructure, and deployment.

I will document my daily learning, practical exercises, commands, challenges, and project implementations throughout this journey.

---

## Learning Roadmap

- Linux Fundamentals and System Administration
- Git and GitHub
- Shell Scripting and Automation
- Node.js and Backend Application Deployment
- Docker and Containerization
- CI/CD Pipelines
- AWS and Cloud Computing
- Kubernetes and Container Orchestration
- Monitoring and Logging
- Infrastructure as Code
- Real-world DevOps Projects

---

# Day 1 – Linux Fundamentals, WSL, Git and Node.js

## 1. Linux Environment Setup

Installed and configured Ubuntu using Windows Subsystem for Linux (WSL2).

### What I Learned

- Understanding Linux and its importance in DevOps.
- Installing Ubuntu onWindows using WSL.
- Understanding the relationship between Windows and Linux environments.
- Opening Ubuntu through Windows Terminal and PowerShell.
- Starting an existing Ubuntu distribution after restarting Windows.
- Understanding the Linux terminal and shell prompt.
- Executing Linux commands without depending on a graphical interface.
- Understanding how WSL allows developers to work with Linux tools on Windows.

### Commands Practiced

```bash
wsl --install -d Ubuntu
wsl -d Ubuntu
```

---

## 2. Linux Directory Navigation

Learned how to navigate the Linux filesystem using terminal commands.

| Command | Description |
|---|---|
| `pwd` | Displays the current working directory |
| `ls` | Lists files and directories |
| `ls -l` | Displays detailed file information |
| `ls -la` | Displays hidden files and directories |
| `cd` | Changes the current directory |
| `cd ..` | Moves to the parent directory |
| `cd ~` | Navigates to the home directory |
| `mkdir` | Creates a directory |

### Practical Implementation

- Created directories using `mkdir`.
- Navigated between directories using `cd`.
- Checked the current location using `pwd`.
- Listed files using `ls`.
- Explored hidden files using `ls -la`.

---

## 3. Linux File Management

Practiced creating, copying, moving, renaming, reading, and deleting files.

| Command | Description |
|---|---|
| `touch file.txt` | Creates an empty file |
| `cp file.txt backup.txt` | Copies a file |
| `mv old.txt new.txt` | Renames or moves a file |
| `rm file.txt` | Deletes a file |
| `cat file.txt` | Displays file contents |
| `less file.txt` | Reads files page by page |
| `echo "text" > file.txt` | Writes content into a file |

### Practical Implementation

- Created files using `touch`.
- Added content using `echo`.
- Read files using `cat`.
- Created backup files using `cp`.
- Renamed files using `mv`.
- Removed unnecessary files using `rm`.
- Practiced reading longer files using `less`.

---

## 4. Linux Text Editors

Learned how to create and edit files directly through the terminal.

### Nano Editor

Practiced using Nano to edit Linux files.

| Shortcut | Action |
|---|---|
| `Ctrl + O` | Save the file |
| `Enter` | Confirm filename |
| `Ctrl + X` | Exit Nano |

### Practical Implementation

- Created text files using Nano.
- Added and modified file contents.
- Saved files directly from the terminal.
- Read saved files using `cat` and `less`.

---

## 5. Git and GitHub Fundamentals

Learned the fundamentals of version control and repository management.

### Concepts Learned

- What Git is and why version control is important.
- Difference between Git and GitHub.
- Understanding repositories and commits.
- Understanding local and remote repositories.
- Cloning a remote GitHub repository.
- Staging and committing changes.
- Pushing local changes to GitHub.
- Basic Git authentication using a Personal Access Token.

### Git Commands Practiced

| Command | Description |
|---|---|
| `git --version` | Checks Git version |
| `git config` | Configures Git username and email |
| `git clone` | Clones a remote repository |
| `git status` | Checks repository status |
| `git add` | Stages changes |
| `git commit` | Creates a commit |
| `git push` | Pushes commits to GitHub |

### Practical Implementation

- Created a GitHub repository named `devops-notes`.
- Cloned the repository into Ubuntu.
- Created and edited README.md.
- Configured Git username and email.
- Practiced staging and committing files.
- Authenticated with GitHub using a Personal Access Token.
- Pushed project changes to the remote repository.

---

## 6. Node.js and Express Introduction

Set up a basic Node.js backend application inside the Ubuntu environment.

### What I Learned

- Understanding Node.js as a JavaScript runtime.
- Understanding npm as a package manager.
- Initializing a Node.js project using `npm init`.
- Installing dependencies using npm.
- Understanding the role of Express.js.
- Creating an HTTP server.
- Understanding HTTP GET routes.
- Running a backend application locally.
- Understanding the purpose of application ports.

### Commands Practiced

```bash
node --version
npm --version

npm init -y
npm install express
```

### Application Structure

```text
starter-app/
├── server.js
├── package.json
└── package-lock.json
```

### Application Features

Implemented a basic Express application with:

- A home route (`GET /`).
- A health-check route (`GET /health`).
- A welcome page displaying my DevOps learning roadmap.
- A JSON health-check response.
- Server uptime information using `process.uptime()`.

### Server Configuration

```javascript
const PORT = 3001;

app.listen(PORT, "0.0.0.0", () => {
    console.log(`Server running at http://localhost:${PORT}`);
});
```

---

## 7. Running Applications in WSL

Learned how to run a Node.js application inside Ubuntu and access it through a Windows browser.

### What I Learned

- Starting a Node.js server using npm scripts.
- Understanding localhost and IP address `127.0.0.1`.
- Understanding `0.0.0.0` as a server listening address.
- Understanding application ports.
- Accessing WSL-hosted applications from Windows.
- Keeping the server terminal running while testing.
- Stopping a running server using `Ctrl + C`.
- Understanding the difference between a server starting successfully and being accessible from a browser.

### Commands Practiced

```bash
npm run dev

curl http://127.0.0.1:3001/health

sudo ss -lntp | grep 3001
```

### Troubleshooting Experience

Encountered and investigated the following browser errors:

- `ERR_UNSAFE_PORT` when attempting to use port 6000.
- `ERR_CONNECTION_REFUSED` when Windows could not establish a connection.
- Checked server configuration and listening ports.
- Learned why Chrome restricts certain ports for security reasons.
- Practiced using `curl` to test HTTP endpoints from Ubuntu.
- Learned how to use `netstat` and `ss` to inspect listening ports.
- Used PowerShell's `Test-NetConnection` to investigate Windows-to-WSL connectivity.

**Important:** Port 6000 is restricted by Chrome. A different port such as 3001 can be used for local development. Browser accessibility still needs to be verified independently.

---

## 8. Project Repository Structure

```text
devops-notes/
│
├── README.md
├── .gitignore
│
└── starter-app/
    ├── server.js
    ├── package.json
    └── package-lock.json
```

---

## Day 1 – Key Takeaways

By completing these exercises, I gained practical exposure to:

1. Setting up Ubuntu Linux using WSL2.
2. Navigating the Linux filesystem through terminal commands.
3. Managing files and directories using Linux commands.
4. Editing files using the Nano terminal editor.
5. Understanding Git and GitHub fundamentals.
6. Creating and managing a remote GitHub repository.
7. Setting up a Node.js and Express application.
8. Creating HTTP routes and a health-check endpoint.
9. Understanding localhost, ports, and server listening addresses.
10. Troubleshooting basic application connectivity issues between WSL and Windows.

---

## Next Steps – Day 2

- Linux users and groups.
- File permissions using `chmod`.
- File ownership using `chown`.
- Privileged commands using `sudo`.
- Ubuntu package management using `apt`.
- Adding and running the starter web application.
- Committing application code to GitHub.

---

**Learning Approach:** Theory + Hands-on Practice + Troubleshooting + Real-world Projects.# DevOps Notes App

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

