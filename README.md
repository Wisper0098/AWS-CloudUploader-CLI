# AWS-CloudUploader-CLI

This Bash script is a simple command-line utility for interacting with Amazon S3 (Simple Storage Service). It provides various functionalities for managing files and directories on S3 buckets.

## Overview

### 1. Default Bucket

The script starts by defining a default bucket using the `DEFAULT_BUCKET_NAME` variable.

### 2. Options

- **Change Bucket (Option 1):**
  - Allows the user to change the default bucket by providing a new name.
  - Checks if the new bucket exists using AWS CLI and updates the default bucket if it does.

- **Upload File (Option 2):**
  - Prompts the user for a filename or path to a file.
  - Checks if the file exists, and if it does, checks if it already exists in the S3 bucket.
  - If the user chooses to overwrite, it uses `pv` to display a progress bar while uploading the file to the S3 bucket.

- **Upload Directory (Option 3):**
  - Prompts the user for a directory path.
  - Checks if the directory exists and recursively uploads its contents to the S3 bucket.

- **List All Objects (Option 4):**
  - Lists all objects in the default S3 bucket using the AWS CLI.

- **Delete Object (Option 5):**
  - Prompts the user for the name of the object they want to delete.
  - Lists the object and then deletes it from the S3 bucket.

- **Exit (Option 0):**
  - Breaks out of the loop and terminates the script.

## Usage

Clone the repository:

```bash
git clone https://github.com/Wisper0098/AWS-CloudUploader-CLI.git
cd AWS-CloudUploader-CLI
```

Set up AWS credentials in 'credentials' file 
```bash
aws_access_key_id = YOUR_ACCESS_KEY_ID
aws_secret_access_key = YOUR_SECRET_ACCESS_KEY
region = your_region
```

Type name of the bucket in 'clouduploader'
```bash
DEFAULT_BUCKET_NAME="s3://yourbucketname"
```

Build up docker image
```bash
docker build -t clouduploader .
```

Run script using docker
```bash
docker run -it -v $(pwd)/credentials:/root/.aws/credentials clouduploader
```
