[![License: Apache2](https://img.shields.io/badge/License-Apache2-green.svg)](https://opensource.org/licenses/Apache-2.0)
[![REUSE status](https://api.reuse.software/badge/github.com/sap-samples/smb-eats-integration)](https://api.reuse.software/info/github.com/sap-samples/smb-eats-integration)

# SMB Eats Integration
*Workflow and ERP integration for the [SMB Eats prototype](https://github.com/SAP-samples/smb-eats-backend)*

[Read full blog post here](https://blogs.sap.com/2021/02/05/sap-workflow-management-and-loosely-coupled-architecture/)

# Description
This repository is comprised of the workflow definitions and integration flows required by the [smb-eats-backend](https://github.com/SAP-samples/smb-eats-backend) sample. It orchestrates the following steps:

![worfklow process](https://i.imgur.com/mouLjiT.png "Workflow process on the Business Application Studio")

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
* Setup your SAP Business Technology Platform Integration Tenant by following [this tutorial](https://developers.sap.com/tutorials/cp-starter-integration-cpi-onboard-subscribe.html). The documentation [Initial Setup of in Cloud Foundry Environment](https://help.sap.com/viewer/368c481cd6954bdfa5d0435479fd4eaf/Cloud/en-US/302b47b11e1749c3aa9478f4123fc216.html) can also help you to understand the whole setup process;
* Set up Workflow Management as per [this tutorial](https://developers.sap.com/tutorials/cp-starter-ibpm-employeeonboarding-1-setup.html);
* Configure your [development space](https://triallink.eu10.trial.applicationstudio.cloud.sap) at SAP Business Application Studio so you can import the provided workflow project. Folow step 1 of [this tutorial](https://developers.sap.com/tutorials/cp-workflow-2-create-module-cf.html) to set up your environment correctly;
* A SAP Business ByDesign test tenant;
* A Qualtrics Survey demo tenant.

## Deployment

### Workflow Deployment
* Configure the destination for the CPI tenant by importing the file *"destination_CPI_SA"* to the *Connectivity > Destinations* of your subaccount (required to create the documents in the SAP Cloud ERP). 
* Do the same with the file *"destination_bpmworkflowruntime_mail"* to configure the SMTP server destination (required to send the email survey).
* Check here how to [import a destination](https://help.sap.com/viewer/cca91383641e40ffbe03bdc78f00f681/Cloud/en-US/91ee9db4737d43b798997ab93e7f3d6e.html) from a file.

Clone this repository using the Business Application Studio;
<p align="center">
  <img src="https://i.imgur.com/tfk5GNG.png">
</p>

Then go ahead, build and deploy the router application for the workflow;
<p align="center">
  <img src="https://i.imgur.com/yeBYHlp.png">
</p>
<p align="center">
  <img src="https://i.imgur.com/dMgTczy.png">
</p>

Finally build and deploy the workflow itself;
<p align="center">
  <img src="https://i.imgur.com/0egtyOb.png">
</p>
<p align="center">
  <img src="https://i.imgur.com/vwuSA3l.png">
</p>

If you want to test your workflow, browse to the [SAP Business Technology Platform Trial Account](https://account.hanatrial.ondemand.com), select your trial subaccount, select your dev space and open your Workflow Management Application. Select the Monitor Workflows > Workflow Definitions, hit "Start New Instance" and replace the "recipient" and "CustomerEmail" with the e-mail you use to login to your trial account. Click "Start New Instance and Close" and head to the "Inbox" tile. You should have a task awaiting for approval.

### Integration Flows Deployment
The communication between Workflow and your ERP Backend is done via Integration Flows implemented in your Integration Tenant (CPI).</br>
The steps to follow are:
1. Setup your ERP Backend OData APIs. </br>
In this specific prototype sample we are connecting to SAP Business ByDesign. In order to get the required OData APIs ready to be consumed please follow the blog [SAP Business ByDesign – OData API Examples](https://blogs.sap.com/2019/02/27/sap-business-bydesign-api-usage-samples/) providing a full set of custom OData APIs ready to be downloaded and imported into ByDesign, we have used some the provided APIs in our prototype.
2. Download the provided Integration Package SMBEats.zip file from the [cpi-flows github folder](https://github.com/SAP-samples/smb-eats-integration/tree/master/cpi-flows);
3. Connect to your SAP BTP Integration Tenant and import the provided Integration Package. </br>
Follow this [documentation](https://help.sap.com/viewer/368c481cd6954bdfa5d0435479fd4eaf/Cloud/en-US/b6a1a6169ab145aa8d647b2e21c54194.html) if you need help on how to import a CPI package;</br>
You should get a package containing 3 flows:</br>
![SMBEats Integration Flows](https://i.imgur.com/31BIywh.png)
4. Configure your ERP Backend technical user into CPI. Please check section "iii.	Store B1 and/or ByD User Credentials at SAP Cloud Platform Integration tenant" from the [SMB Samples Step by Step guide](https://dam.sap.com/mac/preview/XnOAPs.htm) to get details on how to store ByDesign user credentials in CPI. </br>
Note: In the provided flows the user is named BYD_ADMIN, if you use a different name you will need to replace it; 
5. Setup Secure Oubound HTTP Connection by following this [blog](https://blogs.sap.com/2017/06/19/cloud-integration-how-to-setup-secure-outbound-http-connection-using-keystore-monitor/).
6. Replace your ERP backend URL in the different flows HTTP OData calls. </br>
Note: A new version of the flows based on global variables will be released soon so the URL wil only be need to be changed in a single location. I'll update this README when ready;
7. Deploy one by one the 3 Integration Flows part of the package:
![CreateOrder Integration Flow](https://i.imgur.com/kGRKf9r.png)
8. (Optional) If you want to learn a more about the Integration Suite don't hesitate to check this [blog](https://dam.sap.com/mac/preview/XnOAPs.htm) that provides samples, a step by step guide and references to available materials.


## Support and Contributions
This repository is provided "as-is". No warranty or support is available. Feel free to open issues.

## License
Copyright (c) 2020 SAP SE or an SAP affiliate company. All rights reserved. This project is licensed under the Apache Software License, version 2.0 except as noted otherwise in the [LICENSE](LICENSES/Apache-2.0.txt) file.
