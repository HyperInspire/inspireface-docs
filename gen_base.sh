#!/bin/bash

# Create the main project directory
mkdir -p your-sdk-docs

# Change to the project directory
cd your-sdk-docs

# Create the base docs directory structure
mkdir -p docs/{getting-started,api-reference,examples,guides}

# Create documentation files
# Index
cat > docs/index.md << 'EOL'
# Welcome to Your SDK Documentation

This documentation will help you integrate and use our SDK effectively in your applications.

## Features

- Easy-to-use client interface
- Comprehensive authentication methods
- Rich set of API resources
- Extensive examples and use cases

## Quick Navigation

- [Installation Guide](getting-started/installation.md)
- [Quick Start](getting-started/quickstart.md)
- [API Reference](api-reference/client.md)
- [Examples](examples/basic-usage.md)
EOL

# Getting Started section
cat > docs/getting-started/installation.md << 'EOL'
# Installation

## Requirements
- Python 3.7+
- pip package manager

## Installation Steps

```bash
pip install your-sdk
```

## Verification

```python
import your_sdk

# Verify installation
print(your_sdk.__version__)
```
EOL

cat > docs/getting-started/quickstart.md << 'EOL'
# Quick Start

## Initialize the Client

```python
from your_sdk import Client

client = Client(api_key="your-api-key")
```

## Basic Usage

```python
# Make your first API call
response = client.resource.action()
print(response)
```
EOL

# ... (其余文件内容与之前相同，只是路径不同)

# Create Chinese docs directory
mkdir -p docs/i18n/zh

# Create Chinese index
cat > docs/i18n/zh/index.md << 'EOL'
# SDK 文档

更多中文内容正在编写中...
EOL

# Print success message
echo "Documentation structure has been created successfully!"
echo "You can now run 'mkdocs serve' to preview the documentation."