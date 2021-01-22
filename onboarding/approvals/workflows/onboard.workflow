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
				"27588e98-67d0-41a0-95c3-cb0875ce87ff": {
					"name": "Create SO in the core ERP"
				},
				"6cce5d66-1275-415e-80f2-51350c73ec63": {
					"name": "Create Customer Invoice in the core ERP"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
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
				"e639c107-fe19-4031-9246-dfc693de6e49": {
					"name": "SequenceFlow13"
				},
				"08e0afff-8a88-4b71-a701-a6e4e3ec8398": {
					"name": "SequenceFlow14"
				},
				"249129be-087c-470d-ad74-510ce3122d77": {
					"name": "SequenceFlow15"
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
		"27588e98-67d0-41a0-95c3-cb0875ce87ff": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI_SA",
			"path": "/PostByDSalesOrder",
			"httpMethod": "POST",
			"requestVariable": "${context.orderData}",
			"responseVariable": "",
			"id": "servicetask1",
			"name": "Create SO in the core ERP",
			"documentation": "Creates Sales Order in the core ERP with the items of customer's meal request."
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "f7343211-7e7b-45c3-bda6-50d2cd659b81"
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
			"targetRef": "6cce5d66-1275-415e-80f2-51350c73ec63"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"42b6c7f1-d64b-4772-93c5-a56ea0222cca": {},
				"dc56ad04-fdc4-4527-a654-85a5e7b075af": {},
				"a214ed32-0446-420f-9aaa-fdfe65d54183": {},
				"8a7a4ec2-7cdb-410b-9193-98f5fb069ad8": {},
				"62488257-f2cc-4f4b-bed1-ce6fcb16e4d1": {},
				"cb874991-bee5-45be-a234-6b4b1f4e85ca": {},
				"4af31a70-a01b-4f9a-8c14-45b15bed489e": {},
				"0b775856-43cf-473e-8350-7c4d2ef2c5f0": {},
				"4f2305fe-30a2-47c6-b0eb-ec982770c22d": {},
				"1f770d83-d598-4b2f-b28b-1e8d58af238c": {},
				"00f64f8a-81b7-42f2-973a-6b3052fecec8": {},
				"1fed7cd3-0dfc-4e67-9b7d-0cd753319869": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 26,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 994,
			"y": 24.5,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,42 94,42",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "42b6c7f1-d64b-4772-93c5-a56ea0222cca",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"42b6c7f1-d64b-4772-93c5-a56ea0222cca": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 94,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "f7343211-7e7b-45c3-bda6-50d2cd659b81"
		},
		"dc56ad04-fdc4-4527-a654-85a5e7b075af": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 394,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "dbcd0575-f1b3-44f8-826a-0cc6f3e712f6"
		},
		"a214ed32-0446-420f-9aaa-fdfe65d54183": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "494,42 544,42",
			"sourceSymbol": "dc56ad04-fdc4-4527-a654-85a5e7b075af",
			"targetSymbol": "8a7a4ec2-7cdb-410b-9193-98f5fb069ad8",
			"object": "49dfa177-b55e-4520-82de-948ded6d97e5"
		},
		"8a7a4ec2-7cdb-410b-9193-98f5fb069ad8": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 544,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "172b80e4-ae00-49ac-9adb-d630176d70ae"
		},
		"62488257-f2cc-4f4b-bed1-ce6fcb16e4d1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "644,42 694,42",
			"sourceSymbol": "8a7a4ec2-7cdb-410b-9193-98f5fb069ad8",
			"targetSymbol": "cb874991-bee5-45be-a234-6b4b1f4e85ca",
			"object": "ab734063-3a90-46f2-a122-4dd40371026d"
		},
		"cb874991-bee5-45be-a234-6b4b1f4e85ca": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 694,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "722d42e0-3ec7-4314-bf98-47544347f724"
		},
		"4af31a70-a01b-4f9a-8c14-45b15bed489e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "794,42 844,42",
			"sourceSymbol": "cb874991-bee5-45be-a234-6b4b1f4e85ca",
			"targetSymbol": "00f64f8a-81b7-42f2-973a-6b3052fecec8",
			"object": "68dd3b8a-c7ab-4f5b-bdf0-ae808d0831c0"
		},
		"0b775856-43cf-473e-8350-7c4d2ef2c5f0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 244,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "27588e98-67d0-41a0-95c3-cb0875ce87ff"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 15,
			"startevent": 1,
			"endevent": 1,
			"usertask": 6,
			"servicetask": 3,
			"scripttask": 1,
			"parallelgateway": 2
		},
		"058948d7-f123-4c0b-80db-42c6a02b5591": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/onboard/dummy.json",
			"id": "default-start-context"
		},
		"e639c107-fe19-4031-9246-dfc693de6e49": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "f7343211-7e7b-45c3-bda6-50d2cd659b81",
			"targetRef": "27588e98-67d0-41a0-95c3-cb0875ce87ff"
		},
		"4f2305fe-30a2-47c6-b0eb-ec982770c22d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,42 244,42",
			"sourceSymbol": "42b6c7f1-d64b-4772-93c5-a56ea0222cca",
			"targetSymbol": "0b775856-43cf-473e-8350-7c4d2ef2c5f0",
			"object": "e639c107-fe19-4031-9246-dfc693de6e49"
		},
		"08e0afff-8a88-4b71-a701-a6e4e3ec8398": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "27588e98-67d0-41a0-95c3-cb0875ce87ff",
			"targetRef": "dbcd0575-f1b3-44f8-826a-0cc6f3e712f6"
		},
		"1f770d83-d598-4b2f-b28b-1e8d58af238c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "344,42 394,42",
			"sourceSymbol": "0b775856-43cf-473e-8350-7c4d2ef2c5f0",
			"targetSymbol": "dc56ad04-fdc4-4527-a654-85a5e7b075af",
			"object": "08e0afff-8a88-4b71-a701-a6e4e3ec8398"
		},
		"6cce5d66-1275-415e-80f2-51350c73ec63": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI_SA",
			"path": "/ByDSalesOrders",
			"httpMethod": "GET",
			"id": "servicetask3",
			"name": "Create Customer Invoice in the core ERP",
			"documentation": "Creates Customer Invoice in the core ERP with the delivered items of customer's meal request."
		},
		"00f64f8a-81b7-42f2-973a-6b3052fecec8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 844,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "6cce5d66-1275-415e-80f2-51350c73ec63"
		},
		"249129be-087c-470d-ad74-510ce3122d77": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "6cce5d66-1275-415e-80f2-51350c73ec63",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"1fed7cd3-0dfc-4e67-9b7d-0cd753319869": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "944,42 994,42",
			"sourceSymbol": "00f64f8a-81b7-42f2-973a-6b3052fecec8",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "249129be-087c-470d-ad74-510ce3122d77"
		}
	}
}