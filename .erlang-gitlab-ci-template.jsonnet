local exercism_projects = std.map(function(x) std.strReplace(x,"/",""),std.split(std.extVar('exercism_projects'), '\n'));
local lang = std.extVar('lang');

local JobHandler(name) = {
  ['test_' + lang + '_' + name]: {
    stage: 'test',
    trigger: { include: '.' + lang + '-' + name + '-gitlab-ci.yml' },
  },
};

local ErlangTestJob(name) = {
   [ '.erlang-'+name+'-gitlab-ci.yml'  ]: {
    default: {
      image: 'erlang:latest',
    },
    ['test-' + lang + '-' + name + '-exercism']: {
      script: [
        'cd ' + name,
        'rebar3 eunit',
      ],
    },
  }
};


{
  '.generated-config.yml': std.foldl(function(x, y) x + y, std.map(JobHandler, exercism_projects), {}),
} + std.foldl(function(x, y) x + y, std.map(ErlangTestJob, exercism_projects), {})
