
                    Terraform
                        │
                        ▼
                Docker Provider
                        │
      ┌─────────────────┴─────────────────┐
      ▼                                   ▼
 Docker Network                    Docker Volume
      │                                   │
      └──────────────┬────────────────────┘
                     ▼
              NGINX Container
                     │
        ┌────────────┴─────────────┐
        ▼                          ▼
   Custom Website           Health Check
        │
        ▼
 Browser → http://localhost:8080




 # Secure Containerized NGINX Deployment using Terraform + Docker

## Overview

This project demonstrates how to deploy a secure containerized NGINX web server locally using Terraform and Docker.

The goal of this project is to show how Infrastructure as Code can automate container deployment, networking, port mapping, and basic security configurations without requiring a cloud account.

## Architecture

```text
Terraform
   |
   v
Docker Provider
   |
   v
Docker Network
   |
   v
NGINX Container
   |
   v
http://localhost:8080
