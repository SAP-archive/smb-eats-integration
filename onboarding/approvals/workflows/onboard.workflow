{
	"contents": {
		"a083f6e6-03da-4cc4-a54e-b16970426a42": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "onboard",
			"subject": "onboard",
			"customAttributes": [],
			"name": "onboard",
			"documentation": "ByD Eats Prototype Workflow",
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
				"d5515bc0-4169-40cc-ad33-af1254c0ac47": {
					"name": "ParallelGateway1"
				},
				"27588e98-67d0-41a0-95c3-cb0875ce87ff": {
					"name": "Create SO in the core ERP"
				},
				"4fe60708-abce-4ce7-b001-23d7ebd7a639": {
					"name": "Create Invoice in the core ERP"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"aab50a70-0551-447f-82fe-c4bac930205d": {
					"name": "SequenceFlow2"
				},
				"49dfa177-b55e-4520-82de-948ded6d97e5": {
					"name": "SequenceFlow5"
				},
				"ab734063-3a90-46f2-a122-4dd40371026d": {
					"name": "SequenceFlow6"
				},
				"68dd3b8a-c7ab-4f5b-bdf0-ae808d0831c0": {
					"name": "SequenceFlow7"
				},
				"273005ea-636c-4325-bc6b-5e304a7a3272": {
					"name": "SequenceFlow8"
				},
				"3e25df4a-82c5-4ed8-92cf-5f41852230ca": {
					"name": "SequenceFlow10"
				},
				"73a7e10b-1afa-46b1-96d4-38a6304d0690": {
					"name": "SequenceFlow12"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"f7343211-7e7b-45c3-bda6-50d2cd659b81": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Assign and Approve Equipment for ${context.empData.firstName} ${context.empData.lastName}",
			"description": "The manager assigns and approves equipment and relocation of the newly onboarded employee",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "thiago.de.castro.mendes@sap.com",
			"formReference": "/forms/onboard/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
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
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "kitchen",
			"formReference": "/forms/onboard/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
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
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "rider",
			"formReference": "/forms/onboard/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
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
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "rider",
			"formReference": "/forms/onboard/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask6",
			"name": "Delivered",
			"documentation": "Rider finishes the trip and customer already got the meal. Delivery is done."
		},
		"d5515bc0-4169-40cc-ad33-af1254c0ac47": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway1",
			"name": "ParallelGateway1"
		},
		"27588e98-67d0-41a0-95c3-cb0875ce87ff": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"httpMethod": "POST",
			"id": "servicetask1",
			"name": "Create SO in the core ERP",
			"documentation": "Creates Sales Order in ERP with the items of customer's meal request."
		},
		"4fe60708-abce-4ce7-b001-23d7ebd7a639": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"httpMethod": "POST",
			"id": "servicetask2",
			"name": "Create Invoice in the core ERP",
			"documentation": "Creates the customer invoice in the core ERP according to the delivered items."
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "f7343211-7e7b-45c3-bda6-50d2cd659b81"
		},
		"aab50a70-0551-447f-82fe-c4bac930205d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "f7343211-7e7b-45c3-bda6-50d2cd659b81",
			"targetRef": "d5515bc0-4169-40cc-ad33-af1254c0ac47"
		},
		"49dfa177-b55e-4520-82de-948ded6d97e5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "dbcd0575-f1b3-44f8-826a-0cc6f3e712f6",
			"targetRef": "172b80e4-ae00-49ac-9adb-d630176d70ae"
		},
		"ab734063-3a90-46f2-a122-4dd40371026d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "172b80e4-ae00-49ac-9adb-d630176d70ae",
			"targetRef": "722d42e0-3ec7-4314-bf98-47544347f724"
		},
		"68dd3b8a-c7ab-4f5b-bdf0-ae808d0831c0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "722d42e0-3ec7-4314-bf98-47544347f724",
			"targetRef": "4fe60708-abce-4ce7-b001-23d7ebd7a639"
		},
		"273005ea-636c-4325-bc6b-5e304a7a3272": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "d5515bc0-4169-40cc-ad33-af1254c0ac47",
			"targetRef": "27588e98-67d0-41a0-95c3-cb0875ce87ff"
		},
		"3e25df4a-82c5-4ed8-92cf-5f41852230ca": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "d5515bc0-4169-40cc-ad33-af1254c0ac47",
			"targetRef": "dbcd0575-f1b3-44f8-826a-0cc6f3e712f6"
		},
		"73a7e10b-1afa-46b1-96d4-38a6304d0690": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "4fe60708-abce-4ce7-b001-23d7ebd7a639",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"42b6c7f1-d64b-4772-93c5-a56ea0222cca": {},
				"ad166062-7def-400f-abc9-7ad1620675da": {},
				"dc56ad04-fdc4-4527-a654-85a5e7b075af": {},
				"a214ed32-0446-420f-9aaa-fdfe65d54183": {},
				"8a7a4ec2-7cdb-410b-9193-98f5fb069ad8": {},
				"62488257-f2cc-4f4b-bed1-ce6fcb16e4d1": {},
				"cb874991-bee5-45be-a234-6b4b1f4e85ca": {},
				"4af31a70-a01b-4f9a-8c14-45b15bed489e": {},
				"c245e7aa-6ab5-4374-8d64-7045113adf63": {},
				"d3ba70e8-2be2-4ddd-b070-52f54a56c35c": {},
				"0b775856-43cf-473e-8350-7c4d2ef2c5f0": {},
				"04c6f4e2-b19d-4b55-a21e-bd6fb774a25e": {},
				"41406917-b983-4602-b47a-77940b4644eb": {},
				"c4399bfb-294a-494a-9248-deff15514d53": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 81,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 975.9999976158142,
			"y": 79.5,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,97 94,97",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "42b6c7f1-d64b-4772-93c5-a56ea0222cca",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"42b6c7f1-d64b-4772-93c5-a56ea0222cca": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 94,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "f7343211-7e7b-45c3-bda6-50d2cd659b81"
		},
		"ad166062-7def-400f-abc9-7ad1620675da": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,97 244,97",
			"sourceSymbol": "42b6c7f1-d64b-4772-93c5-a56ea0222cca",
			"targetSymbol": "c245e7aa-6ab5-4374-8d64-7045113adf63",
			"object": "aab50a70-0551-447f-82fe-c4bac930205d"
		},
		"dc56ad04-fdc4-4527-a654-85a5e7b075af": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 355.9999988079071,
			"y": 122,
			"width": 100,
			"height": 60,
			"object": "dbcd0575-f1b3-44f8-826a-0cc6f3e712f6"
		},
		"a214ed32-0446-420f-9aaa-fdfe65d54183": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "455.9999988079071,152 490.99999821186066,152 490.99999821186066,97 525.9999976158142,97",
			"sourceSymbol": "dc56ad04-fdc4-4527-a654-85a5e7b075af",
			"targetSymbol": "8a7a4ec2-7cdb-410b-9193-98f5fb069ad8",
			"object": "49dfa177-b55e-4520-82de-948ded6d97e5"
		},
		"8a7a4ec2-7cdb-410b-9193-98f5fb069ad8": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 525.9999976158142,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "172b80e4-ae00-49ac-9adb-d630176d70ae"
		},
		"62488257-f2cc-4f4b-bed1-ce6fcb16e4d1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "625.9999976158142,97 675.9999976158142,97",
			"sourceSymbol": "8a7a4ec2-7cdb-410b-9193-98f5fb069ad8",
			"targetSymbol": "cb874991-bee5-45be-a234-6b4b1f4e85ca",
			"object": "ab734063-3a90-46f2-a122-4dd40371026d"
		},
		"cb874991-bee5-45be-a234-6b4b1f4e85ca": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 675.9999976158142,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "722d42e0-3ec7-4314-bf98-47544347f724"
		},
		"4af31a70-a01b-4f9a-8c14-45b15bed489e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "775.9999976158142,97 825.9999976158142,97",
			"sourceSymbol": "cb874991-bee5-45be-a234-6b4b1f4e85ca",
			"targetSymbol": "41406917-b983-4602-b47a-77940b4644eb",
			"object": "68dd3b8a-c7ab-4f5b-bdf0-ae808d0831c0"
		},
		"c245e7aa-6ab5-4374-8d64-7045113adf63": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 244,
			"y": 76,
			"object": "d5515bc0-4169-40cc-ad33-af1254c0ac47"
		},
		"d3ba70e8-2be2-4ddd-b070-52f54a56c35c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "286,97 320.99999940395355,97 320.99999940395355,42 355.9999988079071,42",
			"sourceSymbol": "c245e7aa-6ab5-4374-8d64-7045113adf63",
			"targetSymbol": "0b775856-43cf-473e-8350-7c4d2ef2c5f0",
			"object": "273005ea-636c-4325-bc6b-5e304a7a3272"
		},
		"0b775856-43cf-473e-8350-7c4d2ef2c5f0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 355.9999988079071,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "27588e98-67d0-41a0-95c3-cb0875ce87ff"
		},
		"04c6f4e2-b19d-4b55-a21e-bd6fb774a25e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "286,97 320.99999940395355,97 320.99999940395355,152 355.9999988079071,152",
			"sourceSymbol": "c245e7aa-6ab5-4374-8d64-7045113adf63",
			"targetSymbol": "dc56ad04-fdc4-4527-a654-85a5e7b075af",
			"object": "3e25df4a-82c5-4ed8-92cf-5f41852230ca"
		},
		"41406917-b983-4602-b47a-77940b4644eb": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 825.9999976158142,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "4fe60708-abce-4ce7-b001-23d7ebd7a639"
		},
		"c4399bfb-294a-494a-9248-deff15514d53": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "925.9999976158142,97 975.9999976158142,97",
			"sourceSymbol": "41406917-b983-4602-b47a-77940b4644eb",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "73a7e10b-1afa-46b1-96d4-38a6304d0690"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 12,
			"startevent": 1,
			"endevent": 1,
			"usertask": 6,
			"servicetask": 2,
			"scripttask": 1,
			"parallelgateway": 2
		}
	}
}