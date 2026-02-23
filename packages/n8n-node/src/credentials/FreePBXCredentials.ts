// FreePBXCredentials.ts

import { ICredentialType, INodeProperties } from 'n8n-workflow';

export class FreePBXCredentialType implements ICredentialType {
	name = 'freePBXCredentials';
	displayName = 'FreePBX';
	properties: INodeProperties[] = [
		{ 
			displayName: 'API Key',
			type: 'string',
			required: true,
			description: 'The API key for FreePBX',
		},
		{
			displayName: 'API Secret',
			type: 'string',
			required: true,
			description: 'The API secret for FreePBX',
		},
	];
}