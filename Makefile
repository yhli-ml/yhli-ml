# Generic project workflow Makefile.
# Fill these placeholders per project before using real commands.

PROJECT_NAME ?= <project_name>
REMOTE_ALIAS ?= <remote_alias>
REMOTE_PROJECT_PATH ?= <remote_project_path>
REMOTE_RESULT_PATH ?= <remote_result_path>
LOCAL_RESULT_PATH ?= <local_result_path>
EXPERIMENT_NAME ?= <experiment_name>
SCHEDULER_JOB_ID ?= <scheduler_job_id>
LOG_PATH ?= <log_path>

.PHONY: status test push local-run remote-pull remote-submit remote-jobs remote-tail pull-results

status:
	@echo "Project: $(PROJECT_NAME)"
	@echo "Would run: git status --short"
	@echo "Would run: git branch --show-current"
	# git status --short
	# git branch --show-current

test:
	@echo "Would run local tests for $(PROJECT_NAME)."
	@echo "Replace <local_test_command> with the project test command."
	# <local_test_command>

push:
	@echo "Would push the current branch for $(PROJECT_NAME)."
	@echo "Review git status and diff before enabling a real push."
	# git push <remote_name> <branch_name>

local-run:
	@echo "Would run local experiment/task $(EXPERIMENT_NAME)."
	@echo "Replace <local_run_command> with the project command."
	# <local_run_command>

remote-pull:
	@echo "Would update code on $(REMOTE_ALIAS):$(REMOTE_PROJECT_PATH)."
	@echo "Replace placeholders and review remote state before enabling."
	# ssh $(REMOTE_ALIAS) 'cd $(REMOTE_PROJECT_PATH) && git status --short && git pull --ff-only'

remote-submit:
	@echo "Would submit remote job $(EXPERIMENT_NAME) on $(REMOTE_ALIAS)."
	@echo "Use the project scheduler or tmux workflow after confirming the target."
	# ssh $(REMOTE_ALIAS) 'cd $(REMOTE_PROJECT_PATH) && <remote_submit_command>'

remote-jobs:
	@echo "Would list jobs on $(REMOTE_ALIAS)."
	@echo "Replace <remote_jobs_command> with the scheduler or process listing command."
	# ssh $(REMOTE_ALIAS) '<remote_jobs_command>'

remote-tail:
	@echo "Would tail log $(LOG_PATH) on $(REMOTE_ALIAS)."
	@echo "Replace placeholders before running a real log command."
	# ssh $(REMOTE_ALIAS) 'tail -n 100 -f $(LOG_PATH)'

pull-results:
	@echo "Would pull results from $(REMOTE_ALIAS):$(REMOTE_RESULT_PATH) to $(LOCAL_RESULT_PATH)."
	@echo "Dry-run first; remove --dry-run only after confirming paths."
	# rsync -av --dry-run $(REMOTE_ALIAS):$(REMOTE_RESULT_PATH)/ $(LOCAL_RESULT_PATH)/

