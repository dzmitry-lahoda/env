# gets all secrets in local gitinored file
param (
    [string]$baseVaultAddress = "https://localhost:8200/"
)

# TODO: check that current token is still valid and do not do that request
# TODO: move folders into args
vault login -method=oidc -address="$baseVaultAddress"
Remove-Item VAULT-TOKEN
Remove-Item ./vault.json
vault read -address="$baseVaultAddress" -field="token" secret/batman/consulacltoken >> VAULT-TOKEN 
vault kv get -address="$baseVaultAddress" -format="json" secret/batman/ccpa >> ./vault.json