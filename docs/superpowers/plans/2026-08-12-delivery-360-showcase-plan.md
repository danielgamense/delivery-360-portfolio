# Delivery 360 Showcase Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Criar e publicar um showcase público, moderno e responsivo do Delivery 360, apresentando a capacidade de transformar dados de delivery em inteligência gerencial para restaurantes.

**Architecture:** O repositório será um portfólio estático composto por um README comercial e assets SVG autorais. Cada asset terá uma responsabilidade visual única: marca, dashboard executivo, módulos operacionais, visão financeira e evolução do ecossistema. Nenhum asset dependerá de código, dados, imagens ou serviços dos aplicativos privados.

**Tech Stack:** Markdown renderizado pelo GitHub, SVG autoral, Git, GitHub CLI e PowerShell para validações estruturais.

## Global Constraints

- Usar o nome comercial `Delivery 360`.
- Usar o subtítulo `Inteligência gerencial para restaurantes, desenvolvida pela Rico Soluções Inteligentes.`
- Manter identidade clara, executiva e financeira.
- Usar somente dados fictícios e nomes demonstrativos.
- Não publicar código, dados, credenciais, identificadores, logs, exports, screenshots reais ou perfis de navegador dos projetos de origem.
- Não usar logotipos ou marcas de plataformas de delivery.
- Escrever para proprietários e sócios de restaurantes, com linguagem simples e executiva.
- Validar leitura no desktop e no mobile, incluindo ausência de overflow horizontal nos SVGs.

---

### Task 1: Preparar a estrutura segura do showcase

**Files:**
- Create: `README.md`
- Create: `.gitignore`
- Create: `assets/`
- Create: `docs/README.md`

**Interfaces:**
- Produces a repository skeleton where the README references only local assets under `assets/`.
- The `.gitignore` must exclude `.env`, credentials, browser profiles, databases, exports, logs, temporary files, and generated operational data.

- [ ] **Step 1: Write the repository safety assertions**

Create a PowerShell validation script at `scripts/verify-showcase.ps1` that checks the repository tree for forbidden path fragments (`.env`, `.secrets`, `.browser-profile`, `dados`, `logs`, `exports`, `.sqlite`, `.db`) and fails with the matching paths.

- [ ] **Step 2: Run the safety assertions before assets exist**

Run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/verify-showcase.ps1
```

Expected: PASS with no forbidden files in the new repository.

- [ ] **Step 3: Add the safe ignore rules and documentation**

Write `.gitignore` with explicit rules for secrets, browser profiles, databases, exports, logs and temporary files. Write `docs/README.md` explaining that this repository is a public commercial showcase and is intentionally separate from the private applications.

- [ ] **Step 4: Run the assertions again**

Run the same PowerShell command and confirm PASS.

- [ ] **Step 5: Commit the repository safety boundary**

```powershell
git add .gitignore docs/README.md scripts/verify-showcase.ps1
git commit -m "chore: establish safe Delivery 360 showcase boundary"
```

### Task 2: Create the visual identity and executive opening

**Files:**
- Create: `assets/delivery360-mark.svg`
- Create: `assets/delivery360-executive-dashboard.svg`

**Interfaces:**
- `delivery360-mark.svg` is a standalone transparent mark that works on the light README background.
- `delivery360-executive-dashboard.svg` is a 1200x760 responsive-friendly illustration with fictional metrics and no external image or logo references.

- [ ] **Step 1: Define the visual acceptance checks**

Extend `scripts/verify-showcase.ps1` to assert that both SVGs exist, contain `viewBox`, contain no `http://` or `https://` image references, and contain the fictional labels `Delivery 360`, `Faturamento`, `Pedidos`, `Ticket médio` and `Resultado`.

- [ ] **Step 2: Run the new checks to verify they fail**

Run the script and confirm it fails because the SVGs are not present yet.

- [ ] **Step 3: Create the authorial visual assets**

Create a light executive dashboard with a blue-petroleum header, green accent, a summary row for faturamento, pedidos, ticket médio and resultado, a sales trend chart, an operational health panel, and a reconciliation status card. Use clearly fictitious labels such as `Restaurante Modelo`, `Unidade Centro` and `Período demonstrativo`.

- [ ] **Step 4: Run the checks and inspect dimensions**

Run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/verify-showcase.ps1
```

Expected: PASS. Also parse the root SVG tags and confirm both assets expose a `viewBox` and fit inside the README width without requiring horizontal scrolling.

- [ ] **Step 5: Commit the opening assets**

```powershell
git add assets/delivery360-mark.svg assets/delivery360-executive-dashboard.svg scripts/verify-showcase.ps1
git commit -m "feat: add Delivery 360 executive opening"
```

### Task 3: Create the operational and commercial modules

**Files:**
- Create: `assets/delivery360-operations.svg`
- Create: `assets/delivery360-commercial.svg`

**Interfaces:**
- `delivery360-operations.svg` communicates pedidos, cancelamentos, tempo de operação, disponibilidade and alerts.
- `delivery360-commercial.svg` communicates produtos, categorias, mix, ticket, horários and comparative performance.

- [ ] **Step 1: Add module assertions**

Extend `scripts/verify-showcase.ps1` to require the labels `Qualidade da operação`, `Cancelamentos`, `Disponibilidade`, `Produtos`, `Cardápio`, `Categorias` and `Comparativo` in the corresponding SVGs.

- [ ] **Step 2: Run the checks to verify they fail**

Run the script and confirm the missing module assets are reported.

- [ ] **Step 3: Create the operations visual**

Create a clear operations panel with fictional status chips, a cancellation trend, an availability indicator, and a list of operational exceptions. Avoid representing any real platform interface.

- [ ] **Step 4: Create the commercial visual**

Create a commercial analysis panel with fictional product cards, category bars, peak-hour indicators and a comparison between two demonstrative periods. Keep labels readable in narrow screens by stacking the cards vertically below a defined breakpoint in the SVG composition.

- [ ] **Step 5: Run checks and commit**

Run the verifier, then commit:

```powershell
git add assets/delivery360-operations.svg assets/delivery360-commercial.svg scripts/verify-showcase.ps1
git commit -m "feat: add Delivery 360 operational and commercial modules"
```

### Task 4: Create the financial, multi-store and automation modules

**Files:**
- Create: `assets/delivery360-finance.svg`
- Create: `assets/delivery360-ecosystem.svg`

**Interfaces:**
- `delivery360-finance.svg` communicates sales-versus-receipts, fees, reconciliation, cash flow, margin and result.
- `delivery360-ecosystem.svg` communicates multiple stores, multiple sources, automated refresh, reports and alerting.

- [ ] **Step 1: Add financial and ecosystem assertions**

Require the labels `Conciliação`, `Recebimentos`, `Taxas`, `Fluxo de caixa`, `Margem`, `Múltiplas lojas`, `Atualização automática`, `Relatórios` and `Alertas` in the verifier.

- [ ] **Step 2: Run the checks to verify they fail**

Run the verifier and confirm the missing assets and labels are reported.

- [ ] **Step 3: Create the financial visual**

Create an executive finance panel that distinguishes faturamento, recebimento and result, shows fictional fees and reconciliation differences, and labels the figures as `Dados demonstrativos`. Do not imply that missing inputs are zero.

- [ ] **Step 4: Create the ecosystem visual**

Create a visual map from `Plataformas de delivery` to `Dados organizados` to `Visão gerencial`, with a multiple-store comparison, automated refresh indicator and report delivery panel. Use generic source labels instead of platform brands.

- [ ] **Step 5: Run checks and commit**

```powershell
git add assets/delivery360-finance.svg assets/delivery360-ecosystem.svg scripts/verify-showcase.ps1
git commit -m "feat: add Delivery 360 finance and ecosystem modules"
```

### Task 5: Compose the commercial README

**Files:**
- Modify: `README.md`
- Modify: `scripts/verify-showcase.ps1`

**Interfaces:**
- README references `assets/delivery360-mark.svg`, `assets/delivery360-executive-dashboard.svg`, `assets/delivery360-operations.svg`, `assets/delivery360-commercial.svg`, `assets/delivery360-finance.svg` and `assets/delivery360-ecosystem.svg`.
- README copy explains the product without claiming that every capability exists in every client deployment.

- [ ] **Step 1: Add README assertions**

Extend the verifier to require the title `Delivery 360`, the Rico subtitle, all six asset references, the phrase `dados demonstrativos`, and the privacy statement that the showcase does not expose client data.

- [ ] **Step 2: Run checks to verify they fail**

Run the verifier and confirm the README is reported as incomplete.

- [ ] **Step 3: Write the README**

Compose the README in this order: centered mark and title, executive dashboard, positioning paragraph, explanation of the two source systems being consolidated at the capability level, then the seven visual modules. Use justified paragraphs where GitHub supports them, short sections and clear captions. End with a concise Rico Soluções Inteligentes attribution and a note that the visual data is demonstrative.

- [ ] **Step 4: Run structural checks**

Run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/verify-showcase.ps1
git diff --check
```

Expected: PASS and no whitespace errors.

- [ ] **Step 5: Commit the README composition**

```powershell
git add README.md scripts/verify-showcase.ps1
git commit -m "docs: compose Delivery 360 commercial showcase"
```

### Task 6: Validate, publish and perform visual review

**Files:**
- Modify: `README.md` only if visual review finds a concrete issue.
- Modify: individual SVG only if a concrete overflow, contrast or legibility issue is found.

**Interfaces:**
- The final repository remains static and safe to publish publicly.
- GitHub readback must confirm every referenced asset exists on the default branch.

- [ ] **Step 1: Run the complete local verification**

Run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/verify-showcase.ps1
git diff --check
git status --short --branch
```

Expected: all checks PASS, no uncommitted changes, and no forbidden files.

- [ ] **Step 2: Render the SVGs for visual inspection**

Use an installed browser or SVG-capable renderer to inspect the executive dashboard and module assets at desktop width and at a narrow mobile viewport. Confirm readable text, no clipped cards, no horizontal overflow and sufficient contrast.

- [ ] **Step 3: Fix only observed visual defects**

If a concrete defect appears, make the smallest focused change, rerun the full verifier, rerun `git diff --check`, and commit the fix with a message describing the defect.

- [ ] **Step 4: Create the GitHub repository and publish**

Rename the local branch to `main`, create the public repository `danielgamense/delivery-360-portfolio` with the description `Delivery 360: inteligência gerencial para restaurantes, desenvolvida pela Rico Soluções Inteligentes.`, add the remote, and push `main` only after the local checks pass.

- [ ] **Step 5: Read back the public repository**

Use `gh api` to verify the repository visibility is public, the README exists, every referenced SVG exists on `main`, and no forbidden path fragment appears in the recursive tree.

- [ ] **Step 6: Report evidence**

Report the public URL, commit hash, local verification result, remote tree result and any visual limitations that could not be verified automatically.
