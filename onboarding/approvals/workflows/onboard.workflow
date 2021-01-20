{
	"contents": {
		"a083f6e6-03da-4cc4-a54e-b16970426a42": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "onboard",
			"subject": "onboard",
			"name": "onboard",
			"documentation": "my first workflow",
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
				"359b5333-ed0d-4b88-b7bb-f505703ee3fb": {
					"name": "Acknowledge and Start Cooking"
				},
				"dbcd0575-f1b3-44f8-826a-0cc6f3e712f6": {
					"name": "Ready for pick-up"
				},
				"172b80e4-ae00-49ac-9adb-d630176d70ae": {
					"name": "Acknowledge and Start Delivery"
				},
				"722d42e0-3ec7-4314-bf98-47544347f724": {
					"name": "Delivered"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"aab50a70-0551-447f-82fe-c4bac930205d": {
					"name": "SequenceFlow2"
				},
				"09f9436c-213e-424b-b514-41f004fb9a0e": {
					"name": "SequenceFlow4"
				},
				"49dfa177-b55e-4520-82de-948ded6d97e5": {
					"name": "SequenceFlow5"
				},
				"ab734063-3a90-46f2-a122-4dd40371026d": {
					"name": "SequenceFlow6"
				},
				"68dd3b8a-c7ab-4f5b-bdf0-ae808d0831c0": {
					"name": "SequenceFlow7"
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
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/onboard/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approve Meal Order"
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
			"targetRef": "359b5333-ed0d-4b88-b7bb-f505703ee3fb"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"42b6c7f1-d64b-4772-93c5-a56ea0222cca": {},
				"ad166062-7def-400f-abc9-7ad1620675da": {},
				"e0958ec5-da7d-4746-9f10-7a053fad791a": {},
				"4719a762-16fc-40d4-a659-b763f7f5cbe7": {},
				"dc56ad04-fdc4-4527-a654-85a5e7b075af": {},
				"a214ed32-0446-420f-9aaa-fdfe65d54183": {},
				"8a7a4ec2-7cdb-410b-9193-98f5fb069ad8": {},
				"62488257-f2cc-4f4b-bed1-ce6fcb16e4d1": {},
				"cb874991-bee5-45be-a234-6b4b1f4e85ca": {},
				"4af31a70-a01b-4f9a-8c14-45b15bed489e": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1001,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,117 230,117",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "42b6c7f1-d64b-4772-93c5-a56ea0222cca",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"42b6c7f1-d64b-4772-93c5-a56ea0222cca": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 180,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "f7343211-7e7b-45c3-bda6-50d2cd659b81"
		},
		"ad166062-7def-400f-abc9-7ad1620675da": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "230,118 390,118",
			"sourceSymbol": "42b6c7f1-d64b-4772-93c5-a56ea0222cca",
			"targetSymbol": "e0958ec5-da7d-4746-9f10-7a053fad791a",
			"object": "aab50a70-0551-447f-82fe-c4bac930205d"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 7,
			"startevent": 1,
			"endevent": 1,
			"usertask": 6
		},
		"359b5333-ed0d-4b88-b7bb-f505703ee3fb": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Kitchen acknowledgement and starts cooking",
			"priority": "HIGH",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/onboard/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask3",
			"name": "Acknowledge and Start Cooking"
		},
		"e0958ec5-da7d-4746-9f10-7a053fad791a": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 340,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "359b5333-ed0d-4b88-b7bb-f505703ee3fb"
		},
		"09f9436c-213e-424b-b514-41f004fb9a0e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "359b5333-ed0d-4b88-b7bb-f505703ee3fb",
			"targetRef": "dbcd0575-f1b3-44f8-826a-0cc6f3e712f6"
		},
		"4719a762-16fc-40d4-a659-b763f7f5cbe7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "390,118 552,118",
			"sourceSymbol": "e0958ec5-da7d-4746-9f10-7a053fad791a",
			"targetSymbol": "dc56ad04-fdc4-4527-a654-85a5e7b075af",
			"object": "09f9436c-213e-424b-b514-41f004fb9a0e"
		},
		"dbcd0575-f1b3-44f8-826a-0cc6f3e712f6": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Ready for pick-up",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/onboard/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask4",
			"name": "Ready for pick-up"
		},
		"dc56ad04-fdc4-4527-a654-85a5e7b075af": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 502,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "dbcd0575-f1b3-44f8-826a-0cc6f3e712f6"
		},
		"49dfa177-b55e-4520-82de-948ded6d97e5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "dbcd0575-f1b3-44f8-826a-0cc6f3e712f6",
			"targetRef": "172b80e4-ae00-49ac-9adb-d630176d70ae"
		},
		"a214ed32-0446-420f-9aaa-fdfe65d54183": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "552,118 726,118",
			"sourceSymbol": "dc56ad04-fdc4-4527-a654-85a5e7b075af",
			"targetSymbol": "8a7a4ec2-7cdb-410b-9193-98f5fb069ad8",
			"object": "49dfa177-b55e-4520-82de-948ded6d97e5"
		},
		"172b80e4-ae00-49ac-9adb-d630176d70ae": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Start Delivery",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/onboard/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask5",
			"name": "Acknowledge and Start Delivery"
		},
		"8a7a4ec2-7cdb-410b-9193-98f5fb069ad8": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 676,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "172b80e4-ae00-49ac-9adb-d630176d70ae"
		},
		"ab734063-3a90-46f2-a122-4dd40371026d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "172b80e4-ae00-49ac-9adb-d630176d70ae",
			"targetRef": "722d42e0-3ec7-4314-bf98-47544347f724"
		},
		"62488257-f2cc-4f4b-bed1-ce6fcb16e4d1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "726,118 873,118",
			"sourceSymbol": "8a7a4ec2-7cdb-410b-9193-98f5fb069ad8",
			"targetSymbol": "cb874991-bee5-45be-a234-6b4b1f4e85ca",
			"object": "ab734063-3a90-46f2-a122-4dd40371026d"
		},
		"722d42e0-3ec7-4314-bf98-47544347f724": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Delivered",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/onboard/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask6",
			"name": "Delivered"
		},
		"cb874991-bee5-45be-a234-6b4b1f4e85ca": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 823,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "722d42e0-3ec7-4314-bf98-47544347f724"
		},
		"68dd3b8a-c7ab-4f5b-bdf0-ae808d0831c0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "722d42e0-3ec7-4314-bf98-47544347f724",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"4af31a70-a01b-4f9a-8c14-45b15bed489e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "873,117.75 1018.5,117.75",
			"sourceSymbol": "cb874991-bee5-45be-a234-6b4b1f4e85ca",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "68dd3b8a-c7ab-4f5b-bdf0-ae808d0831c0"
		}
	}
}