# ☁️ AWS Cloud Labs

A step-by-step portfolio of hands-on AWS labs. Each project is organized in its own folder and includes concise command explanations, labeled screenshots, and the result of each workflow.

## 📚 Projects

| Project | What you will build and practice | Main services |
| --- | --- | --- |
| [EC2](./EC2/README.md) | Launch a Linux web server, automate Apache setup, configure HTTP access, and verify instance health | EC2, EBS, Security Groups |
| [EBS](./EBS/README.md) | Attach and mount a data volume, create a snapshot, and restore a deleted file | EBS, EC2, Linux |

## 🗂️ Repository structure

```text
Cloud/
├── README.md
├── EC2/
│   ├── README.md
│   ├── user-data.sh
│   └── images/
└── EBS/
    ├── README.md
    ├── commands.sh
    └── images/
```

## 🧭 How to use this portfolio

1. Open a project from the table above.
2. Follow its numbered steps in order.
3. Read the short explanation before running a command or reviewing a screenshot.
4. Use the project summary and result section to review the lab outcome.

## ⚠️ Notes

- These are training labs, not production deployment templates.
- Account identifiers, IP addresses, hostnames, and AWS resource IDs have been removed or concealed from the published evidence.
- Review AWS charges and clean up temporary resources when using a personal account.
- Never commit credentials, private keys, or access tokens.
