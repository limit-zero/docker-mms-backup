# MMS Backup Agent
Minimal docker container for running the MMS/MongoDB Cloud Manager Backup Agent

## Usage
Specify MMS configuration values by passing them as environment variables prefixed with `MMS_`.

The [Backup Agent](https://docs.cloudmanager.mongodb.com/tutorial/install-backup-agent-from-archive) documentation requires that at least the `mmsApiKey`, `mmsGroupId`, and `mothership` be set, so a minimal configuration could look like this:
```sh
docker run -e MMS_mmsApiKey=MY_API_KEY -e MMS_mmsGroupId=MY_GROUP_ID -e MMS_mothership=api-backup.us-east-1.mongodb.com limit0/mms-backup-agent:latest
```
