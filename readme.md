# Live Automation Dashboard [DataDog + Terraform]
> Live automation dashboard in Datadog using Terraform

### Create Dashboard

- Update api and app keys in `dashboard.tf` file

      provider "datadog" {
        api_key = "xxxxxxxxxxxxxxxxxxx"
        app_key = "xxxxxxxxxxxxxxxxxxx"
      }

- Now, init, compile and apply changes in the datadog server

    terraform init
    terraform plan
    terraform apply -auto-approve

### Export tests in Dashboard
    pip install -r requirements.txt
    export API_KEY=xxxxxxxxxxxxxxxxxx
    python run.py

### Setup

#### FOR MAC

- Download and config datadog account

      DD_AGENT_MAJOR_VERSION=7 DD_API_KEY=xxxxxxxxxxxxxxxxxxxx bash -c "$(curl -L https://raw.githubusercontent.com/DataDog/datadog-agent/master/cmd/agent/install_mac_os.sh)"

- [optional] direct download:
https://s3.amazonaws.com/dd-agent/datadog-agent-7-latest.dmg

**Note:**
> Use the Datadog Agent app in the system tray, or the command line datadog-agent (located in /usr/local/bin).
Enable/disable integrations in `/opt/datadog-agent/etc/conf.d`

    sudo cp '/opt/datadog-agent/etc/com.datadoghq.agent.plist.example' /Library/LaunchDaemons/com.datadoghq.agent.plist
    
    sudo launchctl load -w /Library/LaunchDaemons/com.datadoghq.agent.plist