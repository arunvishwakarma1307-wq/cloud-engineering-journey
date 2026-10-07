# CI/CD Day-10 — Notes

## Topic: GitHub Actions `always()` and Failure Handling

### 1. Failure Handling in GitHub Actions

GitHub Actions me agar koi job fail hoti hai, to us par depend karne wali jobs normally execute nahi hoti.

Example:

`build → test → deploy`

Agar `test` fail ho jaye, to `deploy` normally run nahi karega.

---

### 2. `always()` Condition

`always()` GitHub Actions ka ek condition function hai.

Ye condition job ya step ko run karne ki permission deti hai even if previous steps ya dependent jobs fail, cancel ho, ya skip ho jayein.

Basic syntax:

    if: ${{ always() }}

---

### 3. `needs`

`needs` ka use jobs ke beech dependency define karne ke liye hota hai.

Example:

    cleanup:
      needs: failure-demo

Iska matlab hai ki `cleanup` job `failure-demo` ke baad evaluate hogi.

Normally agar `failure-demo` fail ho jaye, to dependent `cleanup` job skip ho sakti hai.

Lekin agar cleanup job me:

    if: ${{ always() }}

use kiya gaya ho, to cleanup job previous failure ke baad bhi execute ho sakti hai.

---

### 4. Intentional Failure

Testing ke purpose se workflow me intentionally failure create ki ja sakti hai.

Example:

    exit 1

`exit 1` shell command ko failure status deta hai.

Iska use failure-handling behavior ko safely test karne ke liye kiya ja sakta hai.

---

### 5. `always()` ka Common Use

`always()` un tasks ke liye useful hota hai jo failure ke baad bhi execute karne chahiye.

Examples:

- Cleanup
- Logs collect karna
- Test reports collect karna
- Failure information report karna
- Temporary resources clean karna

---

### 6. Important Point

`always()` previous job ki failure ko success me convert nahi karta.

Agar ek required job fail hui hai, to workflow overall failure dikha sakta hai.

`always()` ka purpose sirf ye hai ki specified step ya job previous result ke bawajood execute ho sake.

---

## Key Learning

`needs` job dependency define karta hai.

`if` condition decide karti hai ki job ya step execute hoga ya nahi.

`always()` previous result ki failure ke bawajood job ya step ko execute karne ki permission deta hai.

### Simple Flow

    Previous Job
         ↓
       Failed
         ↓
    always()
         ↓
    Cleanup Job Runs