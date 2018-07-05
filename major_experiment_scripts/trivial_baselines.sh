# Multi-task training directly on GLUE
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-multi-task-glue, train_tasks = glue, run_name = noelmo-do2-sd1, elmo_chars_only = 1, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-1 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-multi-task-glue, train_tasks = glue, run_name = noelmo-do4-sd1, elmo_chars_only = 1, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-3 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-multi-task-glue, train_tasks = glue, run_name = elmo-do2-sd1, elmo_chars_only = 0, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-4 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-multi-task-glue, train_tasks = glue, run_name = elmo-do4-sd1, elmo_chars_only = 0, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-5 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t

# Random initialization
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-multi-task-glue, train_tasks = none, do_train = 0, run_name = noelmo-do2-sd1, elmo_chars_only = 1, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-1 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-multi-task-glue, train_tasks = none, do_train = 0, run_name = noelmo-do4-sd1, elmo_chars_only = 1, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-3 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-multi-task-glue, train_tasks = none, do_train = 0, run_name = elmo-do2-sd1, elmo_chars_only = 0, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-4 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-multi-task-glue, train_tasks = none, do_train = 0, run_name = elmo-do4-sd1, elmo_chars_only = 0, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-5 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t

# Single-task training: Train and evaluate on each task separately.
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-mnli, train_tasks = mnli, eval_tasks = mnli, run_name = noelmo-do2-sd1, elmo_chars_only = 1, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-1 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-mnli, train_tasks = mnli, eval_tasks = mnli, run_name = noelmo-do4-sd1, elmo_chars_only = 1, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-3 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-mnli, train_tasks = mnli, eval_tasks = mnli, run_name = elmo-do2-sd1, elmo_chars_only = 0, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-4 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-mnli, train_tasks = mnli, eval_tasks = mnli, run_name = elmo-do4-sd1, elmo_chars_only = 0, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-5 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t

COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-cola, train_tasks = cola, eval_tasks = cola, run_name = noelmo-do2-sd1, elmo_chars_only = 1, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-1 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-cola, train_tasks = cola, eval_tasks = cola, run_name = noelmo-do4-sd1, elmo_chars_only = 1, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-3 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-cola, train_tasks = cola, eval_tasks = cola, run_name = elmo-do2-sd1, elmo_chars_only = 0, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-4 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-cola, train_tasks = cola, eval_tasks = cola, run_name = elmo-do4-sd1, elmo_chars_only = 0, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-5 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t

COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-sts-b, train_tasks = sts-b, eval_tasks = sts-b, run_name = noelmo-do2-sd1, elmo_chars_only = 1, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-1 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-sts-b, train_tasks = sts-b, eval_tasks = sts-b, run_name = noelmo-do4-sd1, elmo_chars_only = 1, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-3 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-sts-b, train_tasks = sts-b, eval_tasks = sts-b, run_name = elmo-do2-sd1, elmo_chars_only = 0, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-4 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-sts-b, train_tasks = sts-b, eval_tasks = sts-b, run_name = elmo-do4-sd1, elmo_chars_only = 0, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-5 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t

COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-qnli, train_tasks = qnli, eval_tasks = qnli, run_name = noelmo-do2-sd1, elmo_chars_only = 1, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-1 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-qnli, train_tasks = qnli, eval_tasks = qnli, run_name = noelmo-do4-sd1, elmo_chars_only = 1, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-3 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-qnli, train_tasks = qnli, eval_tasks = qnli, run_name = elmo-do2-sd1, elmo_chars_only = 0, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-4 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-qnli, train_tasks = qnli, eval_tasks = qnli, run_name = elmo-do4-sd1, elmo_chars_only = 0, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-5 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t

COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-sst, train_tasks = sst, eval_tasks = sst, run_name = noelmo-do2-sd1, elmo_chars_only = 1, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-1 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-sst, train_tasks = sst, eval_tasks = sst, run_name = noelmo-do4-sd1, elmo_chars_only = 1, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-3 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-sst, train_tasks = sst, eval_tasks = sst, run_name = elmo-do2-sd1, elmo_chars_only = 0, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-4 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-sst, train_tasks = sst, eval_tasks = sst, run_name = elmo-do4-sd1, elmo_chars_only = 0, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-5 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t

COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-wnli, train_tasks = wnli, eval_tasks = wnli, run_name = noelmo-do2-sd1, elmo_chars_only = 1, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-1 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-wnli, train_tasks = wnli, eval_tasks = wnli, run_name = noelmo-do4-sd1, elmo_chars_only = 1, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-3 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-wnli, train_tasks = wnli, eval_tasks = wnli, run_name = elmo-do2-sd1, elmo_chars_only = 0, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-4 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-wnli, train_tasks = wnli, eval_tasks = wnli, run_name = elmo-do4-sd1, elmo_chars_only = 0, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-5 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t

COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-qqp, train_tasks = qqp, eval_tasks = qqp, run_name = noelmo-do2-sd1, elmo_chars_only = 1, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-1 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-qqp, train_tasks = qqp, eval_tasks = qqp, run_name = noelmo-do4-sd1, elmo_chars_only = 1, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-3 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-qqp, train_tasks = qqp, eval_tasks = qqp, run_name = elmo-do2-sd1, elmo_chars_only = 0, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-4 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-qqp, train_tasks = qqp, eval_tasks = qqp, run_name = elmo-do4-sd1, elmo_chars_only = 0, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-5 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t

COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-mrpc, train_tasks = mrpc, eval_tasks = mrpc, run_name = noelmo-do2-sd1, elmo_chars_only = 1, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-1 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-mrpc, train_tasks = mrpc, eval_tasks = mrpc, run_name = noelmo-do4-sd1, elmo_chars_only = 1, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-3 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-mrpc, train_tasks = mrpc, eval_tasks = mrpc, run_name = elmo-do2-sd1, elmo_chars_only = 0, dropout = 0.2\""; gcloud compute ssh sam-gpu1b-4 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t
COMMAND="cd jiant/src; python main.py --config ../config/defaults.conf --overrides \"exp_name = main-single-task-mrpc, train_tasks = mrpc, eval_tasks = mrpc, run_name = elmo-do4-sd1, elmo_chars_only = 0, dropout = 0.4\""; gcloud compute ssh sam-gpu1b-5 --command="tmux new -s demo -d; tmux send '$COMMAND' Enter; tmux attach -t demo" -- -t

