# EC2 Automation Script

## Description
This script launches EC2 instances, waits for them to reach the running state, stops them, waits again, and then terminates them.  


## Files
| File Name | Description |
|----------|-------------|
| Start_Stop_Terminate_EC2_Instances.sh | Main automation script |
| README.md | Documentation |

## How to Run

### 1. Make the script executable:
```bash
chmod +x Start_Stop_Terminate_EC2_Instances.sh

###2. Execute the script:
./Start_Stop_Terminate_EC2_Instances.sh

# Requirements

AWS CLI configured (aws configure)

IAM user or Role with EC2 permissions

Amazon Linux / Ubuntu environment

Output:
<img width="940" height="269" alt="image" src="https://github.com/user-attachments/assets/2de41f96-cc21-473d-8df6-8a690afabc02" />

<img width="940" height="318" alt="image" src="https://github.com/user-attachments/assets/c81c53d6-d809-428a-aa4f-cfde1a545c66" />



Author
Asif Bagwan
