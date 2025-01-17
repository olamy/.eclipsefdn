local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('jetty') {
  settings+: {
    blog: "https://eclipse.dev/jetty",
    dependabot_alerts_enabled_for_new_repositories: false,
    dependabot_security_updates_enabled_for_new_repositories: false,
    dependency_graph_enabled_for_new_repositories: false,
    description: "The Eclipse Jetty Project",
    email: "jetty-dev@eclipse.org",
    name: "Eclipse Jetty",
    packages_containers_internal: false,
    packages_containers_public: false,
    readers_can_create_discussions: true,
    security_managers+: [
      "rt-jetty-committers"
    ],
    two_factor_requirement: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Contents and release generation for display on https://eclipse.dev/jetty",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
      webhooks: [
        orgs.newRepoWebhook('https://jenkins.webtide.net/github-webhook/') {
          content_type: "json",
          events+: [
            "pull_request",
            "push"
          ],
        },
      ],
    },
    orgs.newRepo('jetty-alpn-api') {
      aliases: ["jetty.alpn.api"],
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® ALPN API - See https://github.com/jetty-project/jetty-alpn for the implementation",
      has_issues: false,
      has_projects: false,
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
      webhooks: [
        orgs.newRepoWebhook('https://jenkins.webtide.net/github-webhook/') {
          content_type: "json",
          events+: [
            "pull_request",
            "push"
          ],
        },
      ],
    },
    orgs.newRepo('jetty-artifact-remote-resources') {
      aliases: ["jetty.artifact.resources"],
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Artifact Resources",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty-assembly-descriptors') {
      aliases: ["jetty.assembly.descriptors"],
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Maven Assembly Descriptors",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty-build-support') {
      aliases: ["jetty.build.support"],
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Build Support",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty.docker') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "jetty docker",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
      webhooks: [
        orgs.newRepoWebhook('https://jenkins.webtide.net/github-webhook/') {
          events+: [
            "pull_request",
            "push"
          ],
        },
      ],
    },
    orgs.newRepo('jetty-parent') {
      archived: true,
      dependabot_alerts_enabled: false,
      description: "Eclipse Jetty® - Archived Repository",
      has_issues: false,
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      secret_scanning_push_protection: "disabled",
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty-perf-helper') {
      aliases: ["jetty.perf.helper"],
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Performance Tool Helper",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty.project') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "jetty-10.0.x",
      delete_branch_on_merge: false,
      description: "Eclipse Jetty® - Web Container & Clients - supports HTTP/2, HTTP/1.1, HTTP/1.0, websocket, servlets, and more",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      topics+: [
        "eclipse",
        "embedded",
        "fcgi",
        "http",
        "http-client",
        "http-server",
        "http2",
        "http2-push",
        "http3",
        "https",
        "jakartaee",
        "java",
        "jetty",
        "jsp",
        "osgi",
        "servlet",
        "ssl",
        "tls",
        "unix-socket",
        "websockets"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
      webhooks: [
        orgs.newRepoWebhook('https://jenkins.webtide.net/github-webhook/') {
          content_type: "json",
          events+: [
            "pull_request",
            "push"
          ],
        },
      ],
      rulesets: [
        orgs.newRepoRuleset('protect-mainline-branches') {
          allows_creations: true,
          allows_updates: true,
          bypass_actors+: [
            "@jetty/rt-jetty-pmc"
          ],
          include_refs+: [
            "refs/heads/jetty-10.0.x",
            "refs/heads/jetty-12.0.x",
            "refs/heads/jetty-9.4.x"
          ],
          required_approving_review_count: 1,
          required_status_checks+: [
            "continuous-integration/jenkins/pr-merge"
          ],
          requires_commit_signatures: false,
          requires_last_push_approval: false,
          requires_review_thread_resolution: false,
        },
      ],
    },
    orgs.newRepo('jetty-schemas') {
      aliases: ["jetty.schemas"],
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - General Schemas Jar",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty-xhtml-schemas') {
      aliases: ["jetty.schemas.xhtml"],
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - XHTML Schemas Jar",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty-servlet-api') {
      aliases: ["jetty.servlet.api"],
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "jakarta-servlet-api",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Servlet API (javax and jakarta)",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      topics+: [
        "eclipse",
        "jakartaee",
        "jetty",
        "servlet"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty-setuid-jna') {
      aliases: ["jetty.setuid"],
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - SetUID Module",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty-test-helper') {
      aliases: ["jetty.test.helper"],
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Test Helper",
      has_wiki: false,
      homepage: "https://jetty.org/",
      topics+: [
              "eclipse",
              "jetty",
              "testing",
              "junit"
            ],
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty-test-policy') {
      archived: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Test Policy",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty-toolchain') {
      aliases: ["jetty.toolchain"],
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Servlet Engine and Http Server project repository (jetty.toolchain)",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
      webhooks: [
        orgs.newRepoWebhook('https://jenkins.webtide.net/github-webhook/') {
          content_type: "json",
          events+: [
            "pull_request",
            "push"
          ],
        },
      ],
    },
    orgs.newRepo('jetty.website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Under Construction",
      has_wiki: false,
      homepage: "http://jetty.org",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty-website-2020') {
      archived: true,
      default_branch: "master",
      dependabot_alerts_enabled: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Under Construction",
      has_wiki: false,
      homepage: "http://jetty.org",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty-websocket-api') {
      aliases: ["jetty.websocket.api"],
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "jakarta-websocket-api",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - WebSocket API (javax and jakarta)",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      topics+: [
        "eclipse",
        "jakartaee",
        "jetty",
        "websocket"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
  ],
}
