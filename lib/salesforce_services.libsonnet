
{
  organization: {
    service: 'organization',
    decode_target: 'organization',
    components: {
      org: 'organization',
      identity: 'external_client_app',
      environment: 'environment',
    },
    role: {
      name: 'organization-administrator',
      permissions: [
        'organization:read',
        'organization:configure',
        'identity:read',
        'identity:configure',
      ],
      description: 'Manage Salesforce organization configuration and integration identity references. Authentication secrets and privileged identity changes require separate controls.',
    },
  },

  metadata: {
    service: 'metadata',
    decode_target: 'metadata',
    components: {
      object: 'CustomObject',
      field: 'CustomField',
      permission: 'PermissionSet',
      apex: 'ApexClass',
      trigger: 'ApexTrigger',
      flow: 'Flow',
      layout: 'Layout',
      application: 'CustomApplication',
    },
    role: {
      name: 'metadata-administrator',
      permissions: [
        'metadata:read',
        'metadata:retrieve',
        'metadata:validate',
        'metadata:deploy',
        'metadata:delete',
      ],
      description: 'Retrieve, validate, deploy and manage Salesforce metadata. Production deployments should use a validation and approval gate before promotion.',
    },
  },

  integration: {
    service: 'integration',
    decode_target: 'integration',
    components: {
      credential: 'NamedCredential',
      external_credential: 'ExternalCredential',
      endpoint: 'endpoint',
      event: 'PlatformEvent',
      api: 'api',
    },
    role: {
      name: 'integration-administrator',
      permissions: [
        'integration:read',
        'integration:configure',
        'credential:read',
        'credential:configure',
        'api:read',
      ],
      description: 'Manage Salesforce integration configuration, API references and credential bindings. Secret values and external endpoint authorization must be controlled separately.',
    },
  },

  deployment: {
    service: 'deployment',
    decode_target: 'deployment',
    components: {
      package: 'package',
      validation: 'validation',
      job: 'deployment_job',
      test: 'test_execution',
      pipeline: 'pipeline',
    },
    role: {
      name: 'deployment-administrator',
      permissions: [
        'deployment:read',
        'deployment:validate',
        'deployment:execute',
        'deployment:status',
        'test:execute',
      ],
      description: 'Orchestrate metadata deployment, validation, tests and deployment-status tracking. Require explicit approval for production promotion.',
    },
  },

  data: {
    service: 'data',
    decode_target: 'data',
    components: {
      object: 'sobject',
      record: 'record',
      query: 'query',
    },
    role: {
      name: 'data-administrator',
      permissions: [
        'data:read',
        'data:create',
        'data:update',
        'data:delete',
      ],
      description: 'Manage Salesforce business data separately from metadata deployment. Apply object-level and field-level security, record sharing and data-protection controls.',
    },
  },
}
