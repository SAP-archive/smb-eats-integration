{
	"contents": {
		"a083f6e6-03da-4cc4-a54e-b16970426a42": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "smbeatsRules",
			"subject": "SMB Eats",
			"customAttributes": [],
			"name": "smbeatsRules",
			"documentation": "SMB Eats Prototype Workflow",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"f7343211-7e7b-45c3-bda6-50d2cd659b81": {
					"name": "Approve Meal Order"
				},
				"dbcd0575-f1b3-44f8-826a-0cc6f3e712f6": {
					"name": "Ready for pick-up"
				},
				"172b80e4-ae00-49ac-9adb-d630176d70ae": {
					"name": "Acknowledge and Start Delivery"
				},
				"722d42e0-3ec7-4314-bf98-47544347f724": {
					"name": "Delivered"
				},
				"27588e98-67d0-41a0-95c3-cb0875ce87ff": {
					"name": "Create SO in the core ERP"
				},
				"6cce5d66-1275-415e-80f2-51350c73ec63": {
					"name": "Post Goods Issue in the core ERP"
				},
				"2b7f9cf0-32ce-4e3c-bb83-2e2af805e152": {
					"name": "MailTask2"
				},
				"8c85ea56-ac22-4d48-98b1-496c6d3dee3a": {
					"name": "Create Customer Invoice in the core ERP"
				},
				"d82d94b6-fa02-4be3-935b-6f89b13d2e2e": {
					"name": "Prepare Rules Payload"
				},
				"ff2b220e-7af5-4423-85bb-933dd298d8ec": {
					"name": "Determine Offer"
				},
				"fdcea78e-0b89-4937-9224-1de3c32efdb9": {
					"name": "Enrich Context"
				},
				"80a6d5ca-7540-452b-94aa-6946a9887d5c": {
					"name": "Approval Required?"
				},
				"6b55090d-11f0-4d86-9652-3a79c61c6571": {
					"name": "Approve Offer"
				},
				"3941c79a-fe8c-485d-9bb9-9b778bf6ab64": {
					"name": "isApproved"
				},
				"f960ee89-92ee-4624-bbca-500a8e004599": {
					"name": "Enrich Approval Context"
				},
				"f64bc178-2b94-45be-8176-7b7644958853": {
					"name": "Check core ERP"
				}
			},
			"sequenceFlows": {
				"d693bd3a-0aaa-45af-a84b-7a312f6adfa6": {
					"name": "SequenceFlow26"
				},
				"1423243c-2c2d-433c-a3c5-eb76a47c5319": {
					"name": "SequenceFlow28"
				},
				"9fc27297-ccab-41df-a496-364da4ef0b17": {
					"name": "SequenceFlow42"
				},
				"259b932f-7380-4927-86a6-de24dba8292d": {
					"name": "SequenceFlow49"
				},
				"fff554ae-7773-4507-9a8f-1d7ae02d1ab2": {
					"name": "Needs user approval"
				},
				"8ff4d6df-2673-4cec-9925-03760795775b": {
					"name": "Auto approved"
				},
				"2943fe08-710c-4821-977c-3316c5c84d9d": {
					"name": "SequenceFlow57"
				},
				"6a60c50a-f50a-459e-ac51-6a7be9d345f8": {
					"name": "SequenceFlow58"
				},
				"4ef73666-00b1-4de1-8406-9f15cb143661": {
					"name": "SequenceFlow65"
				},
				"7c903cfa-049d-4846-9334-0faa7daa6a9f": {
					"name": "SequenceFlow66"
				},
				"0a8229d1-c861-45c8-8cf4-d2a7550f2c68": {
					"name": "SequenceFlow68"
				},
				"2d87f712-5e6f-41a9-8f6d-2655b9a21184": {
					"name": "SequenceFlow69"
				},
				"5a159513-1956-4910-982e-52f4e6fbcf7b": {
					"name": "SequenceFlow70"
				},
				"a2b17195-ad52-4202-be2a-c450883727d6": {
					"name": "SequenceFlow71"
				},
				"518ae065-da3c-406f-8e4b-62a4c3d78cfc": {
					"name": "SequenceFlow72"
				},
				"dbf9e029-7a28-45d9-8c24-180c6f3f9251": {
					"name": "SequenceFlow73"
				},
				"8fb2ee14-4e83-4bc3-ae52-e9c4d4de760d": {
					"name": "SequenceFlow75"
				},
				"d9896b45-c779-4713-870b-7df3b69c936d": {
					"name": "SequenceFlow76"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"058948d7-f123-4c0b-80db-42c6a02b5591": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"f7343211-7e7b-45c3-bda6-50d2cd659b81": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve Meal Request for ${context.orderData.CustomerName}",
			"description": "The agent (usually the restaurant manager) approves the customer's meal request so the kitchen can start preparing it.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.recipient}",
			"formReference": "/forms/smbeatsRules/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalformRules"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approve Meal Order",
			"documentation": "An agent (usually the restaurant manager) needs to approve the customer's meal request."
		},
		"dbcd0575-f1b3-44f8-826a-0cc6f3e712f6": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Ready for pick-up",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "kitchen",
			"formReference": "/forms/smbeatsRules/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalformRules"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask4",
			"name": "Ready for pick-up",
			"documentation": "It's the time for the kitchen to approve the delivery, meaning the meal is ready for pick-up."
		},
		"172b80e4-ae00-49ac-9adb-d630176d70ae": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Start Delivery",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "rider",
			"formReference": "/forms/smbeatsRules/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalformRules"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask5",
			"name": "Acknowledge and Start Delivery",
			"documentation": "A rider accepts the delivery and starts the journey."
		},
		"722d42e0-3ec7-4314-bf98-47544347f724": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Delivered",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "rider",
			"formReference": "/forms/smbeatsRules/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalformRules"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask6",
			"name": "Delivered",
			"documentation": "Rider finishes the trip and customer already got the meal. Delivery is done."
		},
		"27588e98-67d0-41a0-95c3-cb0875ce87ff": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI_SA",
			"path": "/byd/CreateSalesOrder",
			"httpMethod": "POST",
			"requestVariable": "${context.orderData}",
			"responseVariable": "${context.cpi.soResp}",
			"id": "servicetask1",
			"name": "Create SO in the core ERP",
			"documentation": "Creates Sales Order in the core ERP with the items of customer's meal request."
		},
		"6cce5d66-1275-415e-80f2-51350c73ec63": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI_SA",
			"path": "/byd/PostGoodsIssue",
			"httpMethod": "POST",
			"requestVariable": "${context.cpi.soResp}",
			"responseVariable": "${context.cpi.pgiResp}",
			"id": "servicetask3",
			"name": "Post Goods Issue in the core ERP",
			"documentation": "Post Goods Issue in the core ERP"
		},
		"2b7f9cf0-32ce-4e3c-bb83-2e2af805e152": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask2",
			"name": "MailTask2",
			"documentation": "Sends an email asking customer's feedback",
			"mailDefinitionRef": "85e1d031-b287-4dc7-ac5e-45601d4b0a35"
		},
		"8c85ea56-ac22-4d48-98b1-496c6d3dee3a": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI_SA",
			"path": "/byd/CreateInvoice",
			"httpMethod": "POST",
			"requestVariable": "${context.cpi.pgiResp}",
			"responseVariable": "${context.cpi.invResp}",
			"id": "servicetask4",
			"name": "Create Customer Invoice in the core ERP",
			"documentation": "Create Customer Invoice in the core ERP"
		},
		"d82d94b6-fa02-4be3-935b-6f89b13d2e2e": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/smbeatsRules/PrepareRulesPayload.js",
			"id": "scripttask2",
			"name": "Prepare Rules Payload",
			"documentation": "Identify the list of offers available based on the order"
		},
		"ff2b220e-7af5-4423-85bb-933dd298d8ec": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BRULES",
			"path": "/rest/v2/rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.rulesPayload}",
			"responseVariable": "${context.offer.OffersInfo}",
			"id": "servicetask5",
			"name": "Determine Offer",
			"documentation": "Call business rules service to define the offer based on the order channel, location and pizza."
		},
		"fdcea78e-0b89-4937-9224-1de3c32efdb9": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/smbeatsRules/EnrichContext.js",
			"id": "scripttask3",
			"name": "Enrich Context"
		},
		"80a6d5ca-7540-452b-94aa-6946a9887d5c": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BRULES",
			"path": "/rest/v2/rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.rulesPayloadApproval}",
			"responseVariable": "${context.autoApproved}",
			"id": "servicetask6",
			"name": "Approval Required?"
		},
		"6b55090d-11f0-4d86-9652-3a79c61c6571": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve Offer",
			"description": "Manager needs to approve the offer",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.recipient}",
			"formReference": "/forms/smbeatsRules/approvalformOffer.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalformRulesOffer"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask7",
			"name": "Approve Offer",
			"documentation": "Manager needs to approve the offer"
		},
		"3941c79a-fe8c-485d-9bb9-9b778bf6ab64": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "isApproved",
			"documentation": "Offer auto-approved",
			"default": "8ff4d6df-2673-4cec-9925-03760795775b"
		},
		"f960ee89-92ee-4624-bbca-500a8e004599": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/smbeatsRules/EnrichApprovalContext.js",
			"id": "scripttask4",
			"name": "Enrich Approval Context"
		},
		"d693bd3a-0aaa-45af-a84b-7a312f6adfa6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow26",
			"name": "SequenceFlow26",
			"sourceRef": "d82d94b6-fa02-4be3-935b-6f89b13d2e2e",
			"targetRef": "ff2b220e-7af5-4423-85bb-933dd298d8ec"
		},
		"1423243c-2c2d-433c-a3c5-eb76a47c5319": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow28",
			"name": "SequenceFlow28",
			"sourceRef": "ff2b220e-7af5-4423-85bb-933dd298d8ec",
			"targetRef": "fdcea78e-0b89-4937-9224-1de3c32efdb9"
		},
		"9fc27297-ccab-41df-a496-364da4ef0b17": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow42",
			"name": "SequenceFlow42",
			"sourceRef": "fdcea78e-0b89-4937-9224-1de3c32efdb9",
			"targetRef": "80a6d5ca-7540-452b-94aa-6946a9887d5c"
		},
		"259b932f-7380-4927-86a6-de24dba8292d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow49",
			"name": "SequenceFlow49",
			"sourceRef": "6b55090d-11f0-4d86-9652-3a79c61c6571",
			"targetRef": "f7343211-7e7b-45c3-bda6-50d2cd659b81"
		},
		"fff554ae-7773-4507-9a8f-1d7ae02d1ab2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalNeeded==true}",
			"id": "sequenceflow55",
			"name": "Needs user approval",
			"sourceRef": "3941c79a-fe8c-485d-9bb9-9b778bf6ab64",
			"targetRef": "6b55090d-11f0-4d86-9652-3a79c61c6571"
		},
		"8ff4d6df-2673-4cec-9925-03760795775b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow56",
			"name": "Auto approved",
			"sourceRef": "3941c79a-fe8c-485d-9bb9-9b778bf6ab64",
			"targetRef": "f7343211-7e7b-45c3-bda6-50d2cd659b81"
		},
		"2943fe08-710c-4821-977c-3316c5c84d9d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow57",
			"name": "SequenceFlow57",
			"sourceRef": "80a6d5ca-7540-452b-94aa-6946a9887d5c",
			"targetRef": "f960ee89-92ee-4624-bbca-500a8e004599"
		},
		"6a60c50a-f50a-459e-ac51-6a7be9d345f8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow58",
			"name": "SequenceFlow58",
			"sourceRef": "f960ee89-92ee-4624-bbca-500a8e004599",
			"targetRef": "3941c79a-fe8c-485d-9bb9-9b778bf6ab64"
		},
		"4ef73666-00b1-4de1-8406-9f15cb143661": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow65",
			"name": "SequenceFlow65",
			"sourceRef": "27588e98-67d0-41a0-95c3-cb0875ce87ff",
			"targetRef": "dbcd0575-f1b3-44f8-826a-0cc6f3e712f6"
		},
		"7c903cfa-049d-4846-9334-0faa7daa6a9f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow66",
			"name": "SequenceFlow66",
			"sourceRef": "f7343211-7e7b-45c3-bda6-50d2cd659b81",
			"targetRef": "27588e98-67d0-41a0-95c3-cb0875ce87ff"
		},
		"0a8229d1-c861-45c8-8cf4-d2a7550f2c68": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow68",
			"name": "SequenceFlow68",
			"sourceRef": "dbcd0575-f1b3-44f8-826a-0cc6f3e712f6",
			"targetRef": "172b80e4-ae00-49ac-9adb-d630176d70ae"
		},
		"2d87f712-5e6f-41a9-8f6d-2655b9a21184": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow69",
			"name": "SequenceFlow69",
			"sourceRef": "172b80e4-ae00-49ac-9adb-d630176d70ae",
			"targetRef": "6cce5d66-1275-415e-80f2-51350c73ec63"
		},
		"5a159513-1956-4910-982e-52f4e6fbcf7b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow70",
			"name": "SequenceFlow70",
			"sourceRef": "6cce5d66-1275-415e-80f2-51350c73ec63",
			"targetRef": "722d42e0-3ec7-4314-bf98-47544347f724"
		},
		"a2b17195-ad52-4202-be2a-c450883727d6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow71",
			"name": "SequenceFlow71",
			"sourceRef": "722d42e0-3ec7-4314-bf98-47544347f724",
			"targetRef": "2b7f9cf0-32ce-4e3c-bb83-2e2af805e152"
		},
		"518ae065-da3c-406f-8e4b-62a4c3d78cfc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow72",
			"name": "SequenceFlow72",
			"sourceRef": "2b7f9cf0-32ce-4e3c-bb83-2e2af805e152",
			"targetRef": "8c85ea56-ac22-4d48-98b1-496c6d3dee3a"
		},
		"dbf9e029-7a28-45d9-8c24-180c6f3f9251": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow73",
			"name": "SequenceFlow73",
			"sourceRef": "8c85ea56-ac22-4d48-98b1-496c6d3dee3a",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"42b6c7f1-d64b-4772-93c5-a56ea0222cca": {},
				"dc56ad04-fdc4-4527-a654-85a5e7b075af": {},
				"8a7a4ec2-7cdb-410b-9193-98f5fb069ad8": {},
				"cb874991-bee5-45be-a234-6b4b1f4e85ca": {},
				"0b775856-43cf-473e-8350-7c4d2ef2c5f0": {},
				"00f64f8a-81b7-42f2-973a-6b3052fecec8": {},
				"bc04f34d-d16b-4cc5-a534-5e2fc213e6a0": {},
				"08f155c9-80b3-46fe-a9ec-606b3a770980": {},
				"097e2f98-920c-45e2-9c3f-15d3014e2a17": {},
				"7cf4c10f-37e4-4478-a581-45ca8dec9825": {},
				"0d113e86-a4f6-4801-b29d-d138ddde09ab": {},
				"47ce1507-63af-4aa8-87cd-0bcd56eca3d2": {},
				"d31949e7-518f-4130-9cc5-a1aa2b46d56d": {},
				"ffb4f7a7-ec9c-4746-ac3c-00e308024bea": {},
				"aea4f4c4-7275-41b1-8c2a-34d6f6c8a577": {},
				"7ca694a1-291d-4aec-a976-3a4818276862": {},
				"1832a880-633b-4723-8df8-50947f70f70f": {},
				"8fa5927e-896a-465d-96dd-9eb6687f5bb0": {},
				"1cf5d35b-d08b-4b7d-84a7-abdf6767161c": {},
				"54c5ae83-0cf5-47ce-8413-3962cbd5fc5c": {},
				"a173b5d8-71e2-43cc-8cad-279359464e9f": {},
				"dbe7b7ea-094c-42a3-b6b2-17cef2526771": {},
				"c88cca94-8756-496d-9e75-937f00d70d92": {},
				"8cdc3ea7-e765-4418-ba9e-3fdbbf952ada": {},
				"e7448a6b-20ad-49c3-9b6f-74f555eb670d": {},
				"39498ab5-5f92-418f-a133-8b33f23f868b": {},
				"d9ef8035-a683-4663-bdbd-888fa7f35c61": {},
				"ab95091e-06b8-4d97-b7a6-654c99148643": {},
				"b3743b0d-de07-46b4-ad3e-eab95a127963": {},
				"6091239b-ae34-4784-b01a-f5556f64c9a4": {},
				"1f3ca4b0-cf15-4dff-8664-093992e4e819": {},
				"909024b5-64af-4e73-aeff-517430bd11a1": {},
				"37042129-917d-4e39-8fe4-6e8e6d05aa82": {},
				"5a3f6fa5-6843-4ec0-9843-310d54bc847c": {}
			}
		},
		"058948d7-f123-4c0b-80db-42c6a02b5591": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/smbeatsRules/dummy.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -97,
			"y": 43.999999701976776,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 11.999997615814209,
			"y": -86.50000029802322,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42b6c7f1-d64b-4772-93c5-a56ea0222cca": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1125.9999976158142,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "f7343211-7e7b-45c3-bda6-50d2cd659b81"
		},
		"dc56ad04-fdc4-4527-a654-85a5e7b075af": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 909.9999976158142,
			"y": -99.00000029802322,
			"width": 100,
			"height": 60,
			"object": "dbcd0575-f1b3-44f8-826a-0cc6f3e712f6"
		},
		"8a7a4ec2-7cdb-410b-9193-98f5fb069ad8": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 693.9999976158142,
			"y": -99.00000029802322,
			"width": 100,
			"height": 60,
			"object": "172b80e4-ae00-49ac-9adb-d630176d70ae"
		},
		"cb874991-bee5-45be-a234-6b4b1f4e85ca": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 393.9999976158142,
			"y": -99.00000029802322,
			"width": 100,
			"height": 60,
			"object": "722d42e0-3ec7-4314-bf98-47544347f724"
		},
		"0b775856-43cf-473e-8350-7c4d2ef2c5f0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1125.9999976158142,
			"y": -99.00000029802322,
			"width": 100,
			"height": 60,
			"object": "27588e98-67d0-41a0-95c3-cb0875ce87ff"
		},
		"00f64f8a-81b7-42f2-973a-6b3052fecec8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 543.9999976158142,
			"y": -99.00000029802322,
			"width": 100,
			"height": 60,
			"object": "6cce5d66-1275-415e-80f2-51350c73ec63"
		},
		"bc04f34d-d16b-4cc5-a534-5e2fc213e6a0": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 243.9999976158142,
			"y": -99.00000029802322,
			"width": 100,
			"height": 60,
			"object": "2b7f9cf0-32ce-4e3c-bb83-2e2af805e152"
		},
		"08f155c9-80b3-46fe-a9ec-606b3a770980": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 93.99999761581421,
			"y": -99.00000029802322,
			"width": 100,
			"height": 60,
			"object": "8c85ea56-ac22-4d48-98b1-496c6d3dee3a"
		},
		"097e2f98-920c-45e2-9c3f-15d3014e2a17": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 94,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "d82d94b6-fa02-4be3-935b-6f89b13d2e2e"
		},
		"7cf4c10f-37e4-4478-a581-45ca8dec9825": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 244,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "ff2b220e-7af5-4423-85bb-933dd298d8ec"
		},
		"0d113e86-a4f6-4801-b29d-d138ddde09ab": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,59.999999701976776 244,59.999999701976776",
			"sourceSymbol": "097e2f98-920c-45e2-9c3f-15d3014e2a17",
			"targetSymbol": "7cf4c10f-37e4-4478-a581-45ca8dec9825",
			"object": "d693bd3a-0aaa-45af-a84b-7a312f6adfa6"
		},
		"47ce1507-63af-4aa8-87cd-0bcd56eca3d2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 394,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "fdcea78e-0b89-4937-9224-1de3c32efdb9"
		},
		"d31949e7-518f-4130-9cc5-a1aa2b46d56d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "344,59.999999701976776 394,59.999999701976776",
			"sourceSymbol": "7cf4c10f-37e4-4478-a581-45ca8dec9825",
			"targetSymbol": "47ce1507-63af-4aa8-87cd-0bcd56eca3d2",
			"object": "1423243c-2c2d-433c-a3c5-eb76a47c5319"
		},
		"ffb4f7a7-ec9c-4746-ac3c-00e308024bea": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 544,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "80a6d5ca-7540-452b-94aa-6946a9887d5c"
		},
		"aea4f4c4-7275-41b1-8c2a-34d6f6c8a577": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "494,59.999999701976776 544,59.999999701976776",
			"sourceSymbol": "47ce1507-63af-4aa8-87cd-0bcd56eca3d2",
			"targetSymbol": "ffb4f7a7-ec9c-4746-ac3c-00e308024bea",
			"object": "9fc27297-ccab-41df-a496-364da4ef0b17"
		},
		"7ca694a1-291d-4aec-a976-3a4818276862": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 979.9999988079071,
			"y": 30,
			"width": 100,
			"height": 60,
			"object": "6b55090d-11f0-4d86-9652-3a79c61c6571"
		},
		"1832a880-633b-4723-8df8-50947f70f70f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1079.999998807907,60 1125.9999976158142,59.999999701976776",
			"sourceSymbol": "7ca694a1-291d-4aec-a976-3a4818276862",
			"targetSymbol": "42b6c7f1-d64b-4772-93c5-a56ea0222cca",
			"object": "259b932f-7380-4927-86a6-de24dba8292d"
		},
		"8fa5927e-896a-465d-96dd-9eb6687f5bb0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 814,
			"y": 38.999999701976776,
			"object": "3941c79a-fe8c-485d-9bb9-9b778bf6ab64"
		},
		"1cf5d35b-d08b-4b7d-84a7-abdf6767161c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "856,59.999999701976776 979.9999988079071,60",
			"sourceSymbol": "8fa5927e-896a-465d-96dd-9eb6687f5bb0",
			"targetSymbol": "7ca694a1-291d-4aec-a976-3a4818276862",
			"object": "fff554ae-7773-4507-9a8f-1d7ae02d1ab2"
		},
		"54c5ae83-0cf5-47ce-8413-3962cbd5fc5c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "835,80.49999970197678 835,140.5 1176,140.5 1175.9999976158142,89.49999970197678",
			"sourceSymbol": "8fa5927e-896a-465d-96dd-9eb6687f5bb0",
			"targetSymbol": "42b6c7f1-d64b-4772-93c5-a56ea0222cca",
			"object": "8ff4d6df-2673-4cec-9925-03760795775b"
		},
		"a173b5d8-71e2-43cc-8cad-279359464e9f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 694,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "f960ee89-92ee-4624-bbca-500a8e004599"
		},
		"dbe7b7ea-094c-42a3-b6b2-17cef2526771": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "644,59.999999701976776 694,59.999999701976776",
			"sourceSymbol": "ffb4f7a7-ec9c-4746-ac3c-00e308024bea",
			"targetSymbol": "a173b5d8-71e2-43cc-8cad-279359464e9f",
			"object": "2943fe08-710c-4821-977c-3316c5c84d9d"
		},
		"c88cca94-8756-496d-9e75-937f00d70d92": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "794,59.999999701976776 814,59.999999701976776",
			"sourceSymbol": "a173b5d8-71e2-43cc-8cad-279359464e9f",
			"targetSymbol": "8fa5927e-896a-465d-96dd-9eb6687f5bb0",
			"object": "6a60c50a-f50a-459e-ac51-6a7be9d345f8"
		},
		"8cdc3ea7-e765-4418-ba9e-3fdbbf952ada": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1175.9999976158142,-69.00000029802322 1009.4999976158142,-69.00000029802322",
			"sourceSymbol": "0b775856-43cf-473e-8350-7c4d2ef2c5f0",
			"targetSymbol": "dc56ad04-fdc4-4527-a654-85a5e7b075af",
			"object": "4ef73666-00b1-4de1-8406-9f15cb143661"
		},
		"e7448a6b-20ad-49c3-9b6f-74f555eb670d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1175.9999976158142,59.999999701976776 1175.9999976158142,-39.500000298023224",
			"sourceSymbol": "42b6c7f1-d64b-4772-93c5-a56ea0222cca",
			"targetSymbol": "0b775856-43cf-473e-8350-7c4d2ef2c5f0",
			"object": "7c903cfa-049d-4846-9334-0faa7daa6a9f"
		},
		"39498ab5-5f92-418f-a133-8b33f23f868b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "959.9999976158142,-69.00000029802322 793.4999976158142,-69.00000029802322",
			"sourceSymbol": "dc56ad04-fdc4-4527-a654-85a5e7b075af",
			"targetSymbol": "8a7a4ec2-7cdb-410b-9193-98f5fb069ad8",
			"object": "0a8229d1-c861-45c8-8cf4-d2a7550f2c68"
		},
		"d9ef8035-a683-4663-bdbd-888fa7f35c61": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "743.9999976158142,-69.00000029802322 643.4999976158142,-69.00000029802322",
			"sourceSymbol": "8a7a4ec2-7cdb-410b-9193-98f5fb069ad8",
			"targetSymbol": "00f64f8a-81b7-42f2-973a-6b3052fecec8",
			"object": "2d87f712-5e6f-41a9-8f6d-2655b9a21184"
		},
		"ab95091e-06b8-4d97-b7a6-654c99148643": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "593.9999976158142,-69.00000029802322 493.4999976158142,-69.00000029802322",
			"sourceSymbol": "00f64f8a-81b7-42f2-973a-6b3052fecec8",
			"targetSymbol": "cb874991-bee5-45be-a234-6b4b1f4e85ca",
			"object": "5a159513-1956-4910-982e-52f4e6fbcf7b"
		},
		"b3743b0d-de07-46b4-ad3e-eab95a127963": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "443.9999976158142,-69.00000029802322 343.4999976158142,-69.00000029802322",
			"sourceSymbol": "cb874991-bee5-45be-a234-6b4b1f4e85ca",
			"targetSymbol": "bc04f34d-d16b-4cc5-a534-5e2fc213e6a0",
			"object": "a2b17195-ad52-4202-be2a-c450883727d6"
		},
		"6091239b-ae34-4784-b01a-f5556f64c9a4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "293.9999976158142,-69.00000029802322 193.4999976158142,-69.00000029802322",
			"sourceSymbol": "bc04f34d-d16b-4cc5-a534-5e2fc213e6a0",
			"targetSymbol": "08f155c9-80b3-46fe-a9ec-606b3a770980",
			"object": "518ae065-da3c-406f-8e4b-62a4c3d78cfc"
		},
		"1f3ca4b0-cf15-4dff-8664-093992e4e819": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "143.9999976158142,-69.00000029802322 29.49999761581421,-69.00000029802322",
			"sourceSymbol": "08f155c9-80b3-46fe-a9ec-606b3a770980",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "dbf9e029-7a28-45d9-8c24-180c6f3f9251"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 1,
			"sequenceflow": 76,
			"startevent": 1,
			"endevent": 1,
			"usertask": 7,
			"servicetask": 6,
			"scripttask": 5,
			"mailtask": 2,
			"exclusivegateway": 3,
			"parallelgateway": 3,
			"referencedsubflow": 1
		},
		"85e1d031-b287-4dc7-ac5e-45601d4b0a35": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.orderData.CustomerEmail}",
			"subject": "We would appreciate your feedback",
			"reference": "/sample-data/smbeatsRules/qualtrics_sample_sbeats.html",
			"ignoreInvalidRecipients": true,
			"id": "maildefinition1"
		},
		"f64bc178-2b94-45be-8176-7b7644958853": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/smbeats/checkERP.js",
			"id": "scripttask5",
			"name": "Check core ERP"
		},
		"909024b5-64af-4e73-aeff-517430bd11a1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -38,
			"y": 30,
			"width": 100,
			"height": 60,
			"object": "f64bc178-2b94-45be-8176-7b7644958853"
		},
		"8fb2ee14-4e83-4bc3-ae52-e9c4d4de760d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow75",
			"name": "SequenceFlow75",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "f64bc178-2b94-45be-8176-7b7644958853"
		},
		"37042129-917d-4e39-8fe4-6e8e6d05aa82": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-81,59.999999701976776 -37.5,60",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "909024b5-64af-4e73-aeff-517430bd11a1",
			"object": "8fb2ee14-4e83-4bc3-ae52-e9c4d4de760d"
		},
		"d9896b45-c779-4713-870b-7df3b69c936d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow76",
			"name": "SequenceFlow76",
			"sourceRef": "f64bc178-2b94-45be-8176-7b7644958853",
			"targetRef": "d82d94b6-fa02-4be3-935b-6f89b13d2e2e"
		},
		"5a3f6fa5-6843-4ec0-9843-310d54bc847c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "12,60 94.5,59.999999701976776",
			"sourceSymbol": "909024b5-64af-4e73-aeff-517430bd11a1",
			"targetSymbol": "097e2f98-920c-45e2-9c3f-15d3014e2a17",
			"object": "d9896b45-c779-4713-870b-7df3b69c936d"
		}
	}
}