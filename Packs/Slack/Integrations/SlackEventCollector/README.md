Slack logs event collector integration for XSIAM.
This integration was integrated and tested with version v1 of Slack API.

## Configure Slack Event Collector on Cortex XSOAR

1. Navigate to **Settings** > **Integrations** > **Servers & Services**.
2. Search for Slack Event Collector.
3. Click **Add instance** to create and configure a new integration instance.

    | **Parameter** | **Description** | **Required** |
    | --- | --- | --- |
    | User Token |  | False |
    | The maximum number of audit logs to fetch |  | False |
    | The product name corresponding to the integration that originated the events |  | False |
    | The vendor name corresponding to the integration that originated the events |  | False |
    | First fetch time interval | Data is not available prior to March 2018. | False |
    | Trust any certificate (not secure) |  | False |
    | Use system proxy settings |  | False |

4. Click **Test** to validate the URLs, token, and connection.
## Commands
You can execute these commands from the Cortex XSOAR CLI, as part of an automation, or in a playbook.
After you successfully execute a command, a DBot message appears in the War Room with the command details.
### slack-get-events
***
Gets audit log events from Slack.


#### Base Command

`slack-get-events`
#### Input

| **Argument Name** | **Description** | **Required** |
| --- | --- | --- |
| should_push_events | If true, the command will create events, otherwise it will only display them. Possible values are: true, false. Default is false. | Required | 
| limit | Number of results to return, maximum is 9999. Default is 10. | Optional | 
| oldest | Occurrence time of the least recent audit event to include (inclusive). Data is not available prior to March 2018. Default is 3 days. | Optional | 
| latest | Occurrence time of the most recent audit event to include (inclusive). | Optional | 
| action | Name of the action. | Optional | 
| actor | ID of the user who initiated the action. | Optional | 
| entity | ID of the target entity of the action (such as a channel, workspace, organization, file). | Optional | 


#### Context Output

There is no context output for this command.