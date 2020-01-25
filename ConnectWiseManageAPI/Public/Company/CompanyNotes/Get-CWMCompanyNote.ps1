﻿function Get-CWMCompanyNote {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [int]$CompanyID,
        [string]$Condition,
        [ValidatePattern('\S* (desc|asc)')]
        [string]$orderBy,
        [string]$childConditions,
        [string]$customFieldConditions,
        [int]$page,
        [int]$pageSize,
        [switch]$all
    )
    $URI = "https://$($script:CWMServerConnection.Server)/v4_6_release/apis/3.0/company/companies/$($CompanyID)/notes"
    return Invoke-CWMGetMaster -Arguments $PsBoundParameters -URI $URI
}