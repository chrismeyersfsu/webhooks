all:
	kubectl delete deployment webhooks-deployment || true
	#kubectl delete service webhooks || true
	#kubectl delete ingress webhooks || true
	kubectl create -f webhooks-deployment.yml
