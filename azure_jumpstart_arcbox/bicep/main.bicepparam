using 'main.bicep'

// ITPro flavor does not require SSH key
param sshRSAPublicKey = ''

param tenantId = '07e37326-9cf6-4040-b195-55df78117537'

param windowsAdminUsername = 'arcdemo'

// Password supplied at deployment time via --parameters override
param windowsAdminPassword = 'DEPLOY_TIME_OVERRIDE'

param logAnalyticsWorkspaceName = 'ArcBox-Test-LA'

param flavor = 'ITPro'

// Points automation scripts to this fork
param githubAccount = 'nekdima'
param githubBranch = 'main'

// Bastion for secure remote access
param deployBastion = true
param bastionSku = 'Basic'

param vmAutologon = true

// Cost control: auto-shutdown at 18:00 UTC
param autoShutdownEnabled = true
param autoShutdownTime = '1800'
param autoShutdownTimezone = 'UTC'

param resourceTags = {
  Solution: 'jumpstart_arcbox_itpro'
  Environment: 'Test'
  Owner: 'dnekrasov'
}
