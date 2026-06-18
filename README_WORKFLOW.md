# Project Workflow

## Project purpose

`<project_purpose>`

## Local path

`<local_path>`

## Git remote

`<git_remote>`

## Main branch

`<main_branch>`

## Development branch

`<development_branch>`

## Execution targets

| target | purpose | notes |
| --- | --- | --- |
| `local` | `<local_execution_purpose>` | `<local_notes>` |
| `mila` | `<mila_execution_purpose>` | `<mila_notes>` |
| `other-server` | `<other_server_execution_purpose>` | `<other_server_notes>` |

## Local test commands

```sh
<local_test_command>
```

## Remote run commands

### Generic SSH or tmux

```sh
ssh <remote_alias>
cd <remote_project_path>
<remote_run_command>
```

### Scheduler

```sh
ssh <remote_alias>
cd <remote_project_path>
<scheduler_submit_command>
```

## Result paths

| location | path | notes |
| --- | --- | --- |
| local | `<local_result_path>` | `<local_result_notes>` |
| remote | `<remote_result_path>` | `<remote_result_notes>` |

## Pull result commands

```sh
rsync -av --dry-run <remote_alias>:<remote_result_path>/ <local_result_path>/
# Remove --dry-run only after reviewing the paths.
```

## Common troubleshooting

| symptom | check | fix |
| --- | --- | --- |
| `<symptom>` | `<check>` | `<fix>` |

## Local workflow

- local_path: ~/work/projects/yhli-ml
- execution_target: local
- main commands:
  - status/check:
  - test/build:
  - output path:
- notes:
