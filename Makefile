init:
	kubectl apply -f collector.yaml
	sleep 3
	kubectl apply -f prometheus.yaml
	sleep 3
	kubectl apply -f grafana.yaml
	sleep 3
	kubectl apply -f loki.yaml
	sleep 3
	kubectl apply -f fluentbit.yaml
	sleep 3
	kubectl apply -f kbot.yaml

delete:
	kubectl delete -f collector.yaml
	kubectl delete -f prometheus.yaml
	kubectl delete -f grafana.yaml
	kubectl delete -f loki.yaml
	kubectl delete -f fluentbit.yaml
	kubectl delete -f kbot.yaml

create_cluster:
	k3d cluster create monitoring --agents=3

delete_cluster:
	k3d cluster delete monitoring