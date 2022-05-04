.PHONY: docker-build
docker-build:
	@echo "\n📦 Building simple-kubernetes-webhook Docker image..."
	docker build -t simple-kubernetes-webhook:latest .

.PHONY: deploy-webhook
deploy-config:
	@echo "\n⚙️  Applying webhook..."
	kubectl apply -f dev/manifests/cluster-config/

.PHONY: deploy
deploy:
	@echo "\n🚀 Deploying simple-kubernetes-webhook..."
	kubectl apply -f dev/manifests/webhook/
