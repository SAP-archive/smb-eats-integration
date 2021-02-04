[![License: Apache2](https://img.shields.io/badge/License-Apache2-green.svg)](https://opensource.org/licenses/Apache-2.0)
[![REUSE status](https://api.reuse.software/badge/github.com/sap-samples/smb-eats-integration)](https://api.reuse.software/info/github.com/sap-samples/smb-eats-integration)

# SMB Eats Integration
## Workflow and ERP integration for the SMB Eats prototype
[Read full blog post here](https://blogs.sap.com/2021/02/xx/xxxxxxxxx)

# Description
This repository is comprised of the workflow and integration scenarios to orchestrate the following steps:

<p align="center">
  <img src="https://i.imgur.com/mouLjiT.png">
</p>

1. Pizza shop manager needs to approve a customer's order request;
2. Sales Order is posted to the SAP Cloud ERP;
3. Kitchen needs to release the pizza for delivery as soon as it's ready for pickup;
4. Post Goods Issue to the SAP Cloud ERP;
5. Rider needs to acknowledge pizza's pickup for delivery;
6. Rider needs to confirm customer has received the pizza.
7. Sends a Qualtrics satisfaction survey to the customer's e-mail;
8. Post Customer's Invoice to the SAP Cloud ERP.

## Requirements
* A free trial account on SAP Business Technology Platform with Cloud Foundry Trial initialized;
* Follow [this tutorial](https://developers.sap.com/tutorials/cp-trial-quick-onboarding.html) to get a trial SAP Business Technology trial account;
* Setup a [development space](https://triallink.eu10.trial.applicationstudio.cloud.sap) so you can import this project into the SAP Business Application Studio - see step 1 of [this workflow](https://developers.sap.com/tutorials/cp-workflow-2-create-module-cf.html);
* A SAP Business ByDesign test tenant;
* A Qualtrics Survey demo tenant.

## Notes
*

## Deployment
* Configure the destination for the CPI tenant by importing the file *"destination_CPI_SA"* to the *Connectivity > Destinations* of your subaccount (required to create the documents in the SAP Cloud ERP). 
* Do the same with the file *"destination_bpmworkflowruntime_mail"* to configure the SMTP server destination (required to send the email survey).

Clone this repository using the Business Application Studio;
<p align="center">
  <img src="https://i.imgur.com/tfk5GNG.png">
</p>

Build and Deploy the router application;
<p align="center">
  <img src="https://i.imgur.com/yeBYHlp.png">
</p>
<p align="center">
  <img src="https://i.imgur.com/dMgTczy.png">
</p>

Build and Deploy the workflow;
<p align="center">
  <img src="https://i.imgur.com/0egtyOb.png">
</p>
<p align="center">
  <img src="https://i.imgur.com/vwuSA3l.png">
</p>

## Support and Contributions
This repository is provided "as-is". No warranty or support is available. Feel free to open issues.

## License
Copyright (c) 2020 SAP SE or an SAP affiliate company. All rights reserved. This project is licensed under the Apache Software License, version 2.0 except as noted otherwise in the [LICENSE](LICENSES/Apache-2.0.txt) file.
