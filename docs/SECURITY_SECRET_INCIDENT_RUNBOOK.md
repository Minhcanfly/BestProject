# Security Runbook — Credential Exposure and Secret Rotation

Use this runbook when a credential, token, password or private key may have
entered Git, a build artifact, a log or another shared system. Treat a tracked
credential as compromised even if its current validity is unknown.

## Safety rules

- Never call a provider merely to test whether an exposed credential works.
- Never paste the credential into a ticket, chat, command line, screenshot or
  replacement file committed to Git.
- Revoke or rotate first. Removing the value from the latest commit does not
  invalidate copies in Git history, clones, forks, logs or caches.
- Do not rewrite shared history until the repository owner and all active
  contributors have agreed on the maintenance window and recovery procedure.
- Keep incident evidence access-controlled. Record fingerprints or provider
  identifiers, never the secret value itself.

## 1. Contain and inventory

- [ ] Assign an incident owner and record discovery time, repository, branches
  and suspected providers.
- [ ] Pause production deployments and disable affected integration paths if
  users or production data may be exposed.
- [ ] Identify credential owners and environments without exercising the
  credential.
- [ ] Inventory branches, tags, forks, CI logs, artifacts, container images,
  caches and developer clones that may contain the value.
- [ ] Preserve only the minimum metadata needed for investigation.

## 2. Revoke and replace

- [ ] Revoke the exposed credential at its provider.
- [ ] Create a replacement with least privilege, environment isolation,
  expiration and usage restrictions where supported.
- [ ] Store the replacement in the deployment secret store, never in Git.
- [ ] Deploy/restart affected workloads and confirm the old credential is
  rejected through provider status/audit evidence, not by making an ad-hoc
  request from the repository.
- [ ] Review provider audit logs, cost and usage for anomalous activity.

## 3. Clean shared history

History rewriting is destructive and requires explicit repository-owner
approval. Prefer `git filter-repo --sensitive-data-removal` or the provider's
documented equivalent. Work from a fresh mirror clone and keep the replacement
mapping outside the repository.

Before the rewrite:

- [ ] Protect/record open PRs, commit SHAs, releases and deployment references.
- [ ] Notify contributors that old clones must not push or merge old history.
- [ ] Back up the repository in a restricted incident location.
- [ ] Prepare replacement rules without putting the original value in shell
  history, logs or a tracked file.

After the approved rewrite:

- [ ] Force-update every affected branch and tag in the coordinated window.
- [ ] Expire provider caches or contact repository hosting support if required.
- [ ] Close/rebase affected PRs and invalidate old CI artifacts/images.
- [ ] Require contributors to re-clone or carefully rebase clean work; do not
  merge an old branch back into the rewritten history.

## 4. Verify without disclosing secrets

Run a full-history scan with completely redacted output:

```powershell
docker run --rm -v "${PWD}:/repo" -w /repo ghcr.io/gitleaks/gitleaks:v8.24.2 git --redact=100 --no-banner /repo
```

- [ ] Gitleaks reports no unresolved leak on all branches/tags.
- [ ] CI secret scan passes from a fresh clone with full history.
- [ ] Production startup fails when a required secret is absent or an obvious
  placeholder is supplied.
- [ ] The previous credential is revoked and the replacement never appears in
  Git, logs or build artifacts.

## 5. Close and prevent recurrence

- [ ] Attach provider revoke/rotation evidence, redacted scan result, history
  cleanup record and deployment verification to the incident.
- [ ] Document root cause and affected window without including the secret.
- [ ] Confirm `.env` remains ignored and `.env.example` contains blank/example
  values only.
- [ ] Enable the repository pre-commit hook with `pre-commit install` and keep
  the CI secret scan required on protected branches.
- [ ] Define an owner and review date for every production credential.

F-001 is closed only after the provider-side revoke/rotation and the coordinated
history cleanup are complete. Repository code changes alone are not sufficient.
