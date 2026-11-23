# AWS Cloud Portfolio

A structured portfolio of two hands-on AWS projects. Each project documents its architecture, implementation, verification steps, and operational considerations.

> These projects document learning exercises completed in an AWS lab environment. This repository contains no credentials or configuration secrets and does not reproduce the original lab manuals.

## Projects

| Project | Overview | Core services |
| --- | --- | --- |
| [01 — EC2 Web Server](./project-01-ec2-web-server/README.md) | Launch a Linux server, install Apache with User Data, allow HTTP traffic, monitor the instance, and resize its compute and storage | Amazon EC2, Amazon EBS, Security Groups |
| [02 — EBS Snapshot and Restore](./project-02-ebs-snapshot-restore/README.md) | Create and attach a volume, format and mount it, create a snapshot, then restore a file from a new volume | Amazon EBS, Amazon EC2 |

## Repository structure

```text
Cloud/
├── README.md
├── project-01-ec2-web-server/
│   ├── README.md
│   └── assets/
└── project-02-ebs-snapshot-restore/
    ├── README.md
    └── assets/
```

## Publishing notes

- The two projects are kept in separate folders with one portfolio overview at the root.
- Review screenshots before making the repository public. Do not add public IP addresses, account or resource identifiers, or email addresses.
- The examples use small resources in a training environment. Review AWS costs and remove temporary resources after the exercises.

## About

These projects build foundational experience with AWS compute and block storage. The documentation presents the design, workflow, and verification results without copying the original lab instructions.
