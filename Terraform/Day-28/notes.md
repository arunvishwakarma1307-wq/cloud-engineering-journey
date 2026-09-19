# Day 28 - Terraform Saved Plan and Plan Review

## Terraform Plan

`terraform plan` Terraform configuration ko analyze karta hai aur batata hai ki infrastructure me kya changes honge.

Ye resources ko directly create ya modify nahi karta.

Terraform plan generally batata hai:

- Resources to add
- Resources to change
- Resources to destroy
- Final planned result

---

## Saved Terraform Plan

Terraform kisi plan ko ek file me save kar sakta hai.

Iska main purpose hai ki planned changes ko baad me review karke usi saved plan ko apply kiya ja sake.

Saved plan useful hota hai jab infrastructure changes ko apply karne se pehle review ya approval required ho.

---

## Plan File

Saved plan ek normal text file nahi hoti.

Example:

```text
tfplan
```

Is file me Terraform ka generated execution plan store hota hai.

Plan file ko manually edit nahi karna chahiye.

---

## `terraform plan -out`

`terraform plan -out=tfplan` Terraform ke generated plan ko `tfplan` file me save karta hai.

Isse plan ko later inspect aur apply kiya ja sakta hai.

Concept:

```text
Terraform Configuration
        ↓
   terraform plan
        ↓
    Saved Plan
      tfplan
```

---

## Reviewing a Saved Plan

Saved plan ko readable format me inspect kiya ja sakta hai.

Terraform saved plan ko human-readable output me display kar sakta hai.

Isse apply karne se pehle planned changes ko review karna possible hota hai.

---

## `terraform show`

`terraform show` saved Terraform plan ko readable form me display karne ke liye use hota hai.

Example:

```text
tfplan
  ↓
terraform show
  ↓
Readable Plan
```

Ye especially useful hai jab saved plan ko apply karne se pehle changes verify karne ho.

---

## Applying a Saved Plan

Saved plan ko directly apply kiya ja sakta hai.

Concept:

```text
Saved Plan
    ↓
Review
    ↓
Apply Saved Plan
    ↓
Infrastructure Changes
```

Saved plan apply karne ka purpose ye hota hai ki reviewed plan ko use karke changes execute kiye ja saken.

---

## Normal Apply vs Saved Plan Apply

### Normal Apply

Normal `terraform apply` ke case me Terraform apply process ke time plan generate karta hai.

```text
Configuration
      ↓
Plan
      ↓
Apply
```

### Saved Plan Apply

Saved plan workflow me plan pehle generate aur save kiya jata hai.

```text
Configuration
      ↓
Saved Plan
      ↓
Review
      ↓
Apply Saved Plan
```

---

## Plan Review

Plan review infrastructure changes ko apply karne se pehle verify karne ka important step hai.

Review ke time check kiya ja sakta hai:

- Kaunsa resource create hoga
- Kaunsa resource change hoga
- Kaunsa resource destroy hoga
- Resource attributes me kya changes honge
- Planned infrastructure expected configuration ke according hai ya nahi

---

## Saved Plan and Automation

Saved plans CI/CD aur controlled infrastructure workflows me useful ho sakte hain.

Ek workflow me:

```text
Terraform Configuration
        ↓
Plan
        ↓
Save Plan
        ↓
Review / Approval
        ↓
Apply
```

Isse infrastructure changes ko apply karne se pehle review process add kiya ja sakta hai.

---

## Important Security Point

Terraform saved plan files ko casually share nahi karna chahiye.

Plan files me infrastructure configuration aur potentially sensitive values ki information ho sakti hai.

Isliye saved plan files ko:

- Git repository me unnecessarily commit nahi karna chahiye
- Publicly share nahi karna chahiye
- Secure location me rakhna chahiye

---

## Saved Plan vs Terraform State

Saved plan aur Terraform state same cheez nahi hain.

### Saved Plan

Saved plan batata hai:

```text
What Terraform plans to do
```

### Terraform State

Terraform state track karta hai:

```text
What Terraform currently manages
```

Simple difference:

```text
Plan  → Proposed Changes
State → Managed Infrastructure Information
```

---

## Final Verification

Saved plan apply hone ke baad `terraform plan` dobara run karke verify kiya ja sakta hai ki configuration aur managed infrastructure me koi pending difference nahi hai.

Expected result:

```text
No changes.
Your infrastructure matches the configuration.
```

---

## Real-World Use

Saved Terraform plans useful ho sakte hain:

- Infrastructure change review
- Approval workflows
- CI/CD pipelines
- Production deployments
- Controlled infrastructure changes
- Change management

---

## Key Terms

- Terraform Plan
- Saved Plan
- Plan File
- `terraform plan -out`
- `terraform show`
- Plan Review
- Saved Plan Apply
- Infrastructure Changes
- Terraform State
- Change Approval