# Python Script with Cisco SDK
In this module we will be using the [Meraki Always On API](https://devnetsandbox.cisco.com/DevNet/catalog/meraki-always-on#instructions) provided by Cisco DevNet.  First we need to read the instructions in the [API Docs](https://developer.cisco.com/meraki/api/introduction/#whats-new-in-v1), and set up a virtual environment in Python.

## Setting up the Python Virtual Environment
**Terminal**
```console
python -m venv meraki
source ./meraki/bin/activate


pip install meraki
```

```python
import meraki

# Instantiate Meraki API Session
dashboard = meraki.DashboardAPI()

orgs = dashboard.organizations.getOrganizations()
print(orgs)
```

> ** You can find the actual Python script [here](./code/meraki-api.py) **
