# Woodpecker CI

CI runs at https://ci.145-239-89-212.sslip.io on an existing VPS. It does not use GitHub Actions minutes.

## Project checks

Source integrity and packaging: Git object validation and a readable source archive with a SHA-256 checksum. This is not an application or Arma runtime test. No runtime test/build command or deployment target is defined in this repository.

Push, pull-request and manual events use `.woodpecker/verify.yaml`. Pull-request
runs require owner approval. There are no production credentials or host mounts
in this pipeline. A failed project check remains a failure; CI does not ignore it.

No automatic production deployment existed for this repository. Deployment is
not enabled until its target and release procedure are defined. Source archives
in the packaging profile are temporary validation outputs, not published releases.
