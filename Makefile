# 伪目标
.PHONY: dev dep-pro dep-pub

# 运行开发环境
dev:
	python dev.py

# 部署
dep-pro:
	ssh root@182.92.114.142 "cd /home/domain-admin && git pull && /usr/local/bin/supervisorctl restart domain-admin"
	echo http://182.92.114.142:9090/

# 发布
dep-pub:
	bash publish.sh