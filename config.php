<?php
define("TOKEN", "secret-token");                                       // The secret token to add as a GitHub or GitLab secret, or otherwise as https://www.example.com/?token=secret-token
define("REMOTE_REPOSITORY", "git@github.com:8BitMixtape/NeoWiki.git"); // The SSH URL to your repository
define("DIR", "/home4/lpatch/deadmediafm/manticore.deadmediafm.org/DocsifyWebhook/8Bit-Mixtape-NEO.wiki");                          // The path to your repostiroy; this must begin with a forward slash (/)
define("BRANCH", "refs/heads/master");                                 // The branch route
define("LOGFILE", "deploy.log");                                       // The name of the file you want to log to.
define("GIT", "/usr/bin/git");                                         // The path to the git executable
define("AFTER_PULL", "sh /home4/lpatch/deadmediafm/manticore.deadmediafm.org/DocsifyWebhook/publish.sh");                                              // A command to execute after successfully pulling