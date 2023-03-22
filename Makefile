TIMESTAMP=$(shell date +%s)
LOG_PATH=logs/backup-$(TIMESTAMP).log

.PHONY: clean backup

clean:
	rm -rf logs/*

backup:
	bash -c "./backup.sh | tee -a $(LOG_PATH)"