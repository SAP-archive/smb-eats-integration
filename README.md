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
The workflow is ERP agnostic and calling CPI flows in order to get the documents created at the ERP. Workflow just needs to change a context variable in order to select the required ERP.</br>

For our prototype we have considered 2 ERP backends: SAP Business ByDesign and SAP S/4 HANA Cloud. The steps to follow are the same, just some of them will be dependent of course of the ERP backend chosen:
#### 1. Setup your ERP Backend OData APIs. 
##### SAP S/4 HANA Cloud
SAP S/4 HANA Cloud is providing OData and SOAP APIs. 
In order to enable the APIs, a communication user, communication system and the communication arrangement need to be created.
Please check the following API's documentation giving details about the required Communication scenarios:
- [Create Sales Order](https://help.sap.com/viewer/19d48293097f4a2589433856b034dfa5/2020.000/en-US/641bd0dc16bf406684ca2c614322c15e.html)
- [Create Outbound Delivery](https://help.sap.com/viewer/588780cab2774a7ab9fffca3a7f919fe/2102.500/en-US/ab6845012ee148ba9c2694648c2a0685.html)
- [Billing Document - Create with SD Document Reference](https://help.sap.com/viewer/03c04db2a7434731b7fe21dca77440da/2102.500/en-US/63effdc0e14b4719bc72707672cac1cb.html) </br>
Check this blog if you need explanations on [Setting up Communication Management in SAP S/4HANA Cloud](https://blogs.sap.com/2017/11/09/setting-up-communication-management-in-sap-s4hana-cloud/)
##### SAP Business ByDesign
In order to get the required OData APIs ready to be consumed please follow the blog [SAP Business ByDesign – OData API Examples](https://blogs.sap.com/2019/02/27/sap-business-bydesign-api-usage-samples/) providing a full set of custom OData APIs ready to be downloaded and imported into ByDesign, we have used some the provided APIs in our prototype.
#### 2. Download the provided Integration Package
 Download the provided Integration Package:
 - For SAP S/4 HANA Cloud: S4Eats.zip file from the [cpi-flows github folder](https://github.com/SAP-samples/smb-eats-integration/tree/master/cpi-flows)
 - For SAP Business ByDesign: SMBEats.zip file from the [cpi-flows github folder](https://github.com/SAP-samples/smb-eats-integration/tree/master/cpi-flows)
#### 3. Connect to your SAP BTP Integration Tenant and import the provided Integration Package. 
Follow this [documentation](https://help.sap.com/viewer/368c481cd6954bdfa5d0435479fd4eaf/Cloud/en-US/b6a1a6169ab145aa8d647b2e21c54194.html) if you need help on how to import a CPI package;</br>
In both cases (SMBEats and S4Eats) you should get a package containing 3 flows:</br>
![SMBEats Integration Flows](https://i.imgur.com/31BIywh.png)
#### 4. Configure your ERP Backend technical user into CPI. 
You need to store your ERP backend technical user credentials into CPI. Please check this [document](https://help.sap.com/viewer/368c481cd6954bdfa5d0435479fd4eaf/Cloud/en-US/6912d63bbbc64aee8bbd4ff10314c60c.html?q=secure%20credential)] for more details.
You have a sample with instructions at section "iii.	Store B1 and/or ByD User Credentials at SAP Cloud Platform Integration tenant" from the [SMB Samples Step by Step guide](https://dam.sap.com/mac/preview/XnOAPs.htm) to get details on how to store ByDesign user credentials in CPI. </br>
Note: In the provided flows the user is named BYD_ADMIN or S4_SA, if you use a different name you will need to replace it. 
#### 5. For SAP Business ByDesign only
Setup Secure Oubound HTTP Connection by following this [blog](https://blogs.sap.com/2017/06/19/cloud-integration-how-to-setup-secure-outbound-http-connection-using-keystore-monitor/).
#### 6. Configure your ERP backend server and user.  
The different parameters to be configured to connect to your specific ERP Backend have been defined in the flows using the [Externalization](https://blogs.sap.com/2017/06/20/externalizing-parameters-using-sap-cloud-platform-integrations-web-application/) feature.<br>
Press the Configure link on the top right of each one of the provided flows:
![Configure](https://i.imgur.com/ycHatkG.png)
A new screen opens where you can configure each one of the Receivers with the corresponding values required for the Connection:
For SAP S/4 HANA Cloud:
![SetValuesS4](https://i.imgur.com/mr8bvse.png)
For SAP Business ByDesign:
![SetValuesByD](https://i.imgur.com/ziWlBv2.png)
#### 7. Deploy the Integration Flows in CPI
Deploy one by one the 3 Integration Flows part of the package (same 3 flows are part of the ByD and S4 packages):
![CreateOrder Integration Flow](https://i.imgur.com/PrQUwvU.png)
#### 8. (Optional) Extra documentation
If you want to learn a more about the Integration Suite don't hesitate to check this [blog](https://dam.sap.com/mac/preview/XnOAPs.htm) that provides samples, a step by step guide and references to available materials.


## Support and Contributions
This repository is provided "as-is". No warranty or support is available. Feel free to open issues.

## License
Copyright (c) 2020 SAP SE or an SAP affiliate company. All rights reserved. This project is licensed under the Apache Software License, version 2.0 except as noted otherwise in the [LICENSE](LICENSES/Apache-2.0.txt) file.
