{
    "id": "983b9993-798a-4574-a35f-b739128c13cb",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_yeager_player",
    "eventList": [
        {
            "id": "b97e3e5a-3923-4f46-b838-309715b25b6f",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "983b9993-798a-4574-a35f-b739128c13cb"
        },
        {
            "id": "ddcba961-e968-4e36-a134-4433732d5125",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "983b9993-798a-4574-a35f-b739128c13cb"
        },
        {
            "id": "aa1e5c9d-1df2-4e95-9c15-15c599e54edc",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 4,
            "eventtype": 7,
            "m_owner": "983b9993-798a-4574-a35f-b739128c13cb"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "08013660-878e-43ed-ab0a-d58027417808",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "100",
            "varName": "max_life",
            "varType": 0
        },
        {
            "id": "a07a7402-1414-4d15-b1af-1c01824aa35e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "100",
            "varName": "max_endurance",
            "varType": 0
        },
        {
            "id": "29dde7f0-489e-48dc-9054-e5c6be7bc143",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "42",
            "varName": "tired_endurance",
            "varType": 0
        },
        {
            "id": "ba82668e-4ba1-469d-a414-7460c5d885c5",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "100",
            "varName": "max_mental_health",
            "varType": 0
        },
        {
            "id": "27098764-3777-4067-b032-a9cd5fe4bc0b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "42",
            "varName": "cursed_mental_health",
            "varType": 0
        },
        {
            "id": "a6dd3e04-e1f6-48b4-bc96-ded76a810d8f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1.5",
            "varName": "multiplier_run",
            "varType": 0
        },
        {
            "id": "442b46b9-da2e-4894-ad8d-cfb3354c25cd",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "old_speed",
            "varType": 0
        },
        {
            "id": "e31c2246-0f72-4e4f-9148-feb20db1594a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.05",
            "varName": "variation_up_endurance",
            "varType": 0
        },
        {
            "id": "da48a50b-e9e8-46ab-8d12-7d1b49244d71",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.1",
            "varName": "variation_down_endurance",
            "varType": 0
        },
        {
            "id": "c62b7419-508f-49cd-bb11-70046556f30f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2.5",
            "varName": "tired_speed",
            "varType": 0
        },
        {
            "id": "b81f989c-dfba-4cad-88f2-bd80888030e3",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "42",
            "varName": "low_life",
            "varType": 0
        },
        {
            "id": "feb3b5d7-505c-4cd0-91d3-277bc1bd7efa",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "range_interaction",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "b08782c7-3294-4a99-bd74-b753455eb774",
    "visible": true
}