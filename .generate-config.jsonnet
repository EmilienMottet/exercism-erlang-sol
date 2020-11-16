local exercism_projects = std.map(function(x) std.strReplace(x, '/', ''), std.split(std.extVar('exercism_projects'), '\n'));
local lang = std.extVar('lang');

local JobHandler(name) = {
  ['test_' + lang + '_' + name]: {
    stage: 'test',
    trigger: {
      include: [
        {
          artifact: '.erlang-'+name+'-gitlab-ci.yml',
          job: 'generate_' + lang + '_gitlab_ci',
        }
      ],
      strategy: 'depend',
    }
  },
};

{
  '.generated-config.yml': { ['generate_' + lang + '_gitlab_ci']: {
    stage: 'build',
    image: {
      name: 'bitnami/jsonnet:latest',
      entrypoint: [''],
    },
    script: [
      'jsonnet -m . --ext-str exercism_projects="$(ls -d */)" --ext-str lang="erlang" ".erlang-gitlab-ci.jsonnet"',
    ],
    artifacts: {
      paths: [
        '.erlang-*-gitlab-ci.yml',
      ],
    },
  } } + std.foldl(function(x, y) x + y, std.map(JobHandler, exercism_projects), {}),
}
