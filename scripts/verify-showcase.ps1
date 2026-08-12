$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $PSScriptRoot
$forbidden = @('.env', '.secrets', '.browser-profile', 'dados', 'logs', 'exports', '.sqlite', '.db')
$files = Get-ChildItem -LiteralPath $root -File -Recurse -Force | Where-Object { $_.FullName -notmatch '\\.git\\' }
$matches = foreach ($file in $files) {
    foreach ($fragment in $forbidden) {
        if ($file.FullName.ToLowerInvariant().Contains($fragment.ToLowerInvariant())) {
            $file.FullName
            break
        }
    }
}
if ($matches) { throw "Forbidden paths found:`n$($matches -join "`n")" }

$required = @(
    'assets/delivery360-mark.svg',
    'assets/delivery360-executive-dashboard.svg',
    'assets/delivery360-operations.svg',
    'assets/delivery360-commercial.svg',
    'assets/delivery360-finance.svg',
    'assets/delivery360-ecosystem.svg'
)
$missing = $required | Where-Object { -not (Test-Path (Join-Path $root $_)) }
if ($missing) { throw "Missing required assets:`n$($missing -join "`n")" }

$requiredTerms = @{
    'assets/delivery360-executive-dashboard.svg' = @('Delivery 360','Faturamento','Pedidos','Ticket','Resultado')
    'assets/delivery360-operations.svg' = @('Qualidade','Cancelamentos','Disponibilidade')
    'assets/delivery360-commercial.svg' = @('Produtos','Card','Categorias','Comparativo')
    'assets/delivery360-finance.svg' = @('Concilia','Recebimentos','Taxas','Fluxo de caixa','Margem')
    'assets/delivery360-ecosystem.svg' = @('Lojas','Atualiza','Relat','Alertas')
}
foreach ($entry in $requiredTerms.GetEnumerator()) {
    $path = Join-Path $root $entry.Key
    $content = [IO.File]::ReadAllText($path, [Text.Encoding]::UTF8)
    if ($content -notmatch '<svg[^>]+viewBox=') { throw "$($entry.Key) has no viewBox" }
    if ($content -match '<image[^>]+(?:href|xlink:href)=["'']https?://') { throw "$($entry.Key) contains an external image reference" }
    foreach ($term in $entry.Value) { if ($content -notmatch [regex]::Escape($term)) { throw "$($entry.Key) is missing: $term" } }
}

if (-not (Test-Path (Join-Path $root 'README.md'))) { throw 'README.md is missing' }
$readme = [IO.File]::ReadAllText((Join-Path $root 'README.md'), [Text.Encoding]::UTF8)
foreach ($term in @('Delivery 360','Rico','dados demonstrativos','delivery360-executive-dashboard.svg','delivery360-finance.svg')) {
    if ($readme -notmatch [regex]::Escape($term)) { throw "README.md is missing: $term" }
}
'Delivery 360 showcase verification: PASS'
