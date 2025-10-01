PROJECT_ROOT = /mnt/c/My-Project/project-protos
PROTO_DIR = $(PROJECT_ROOT)/proto
TASK_OUT_DIR = $(PROTO_DIR)/task
USER_OUT_DIR = $(PROTO_DIR)/user

generate:
	# Создаем папки для выходных файлов
	mkdir -p "$(TASK_OUT_DIR)"
	mkdir -p "$(USER_OUT_DIR)"
	
	# Генерация для user
	protoc \
		--proto_path="$(PROTO_DIR)" \
		--go_out="$(USER_OUT_DIR)" --go_opt=paths=source_relative \
		--go-grpc_out="$(USER_OUT_DIR)" --go-grpc_opt=paths=source_relative \
		"$(PROTO_DIR)/user.proto"
	
	# Генерация для task
	protoc \
		--proto_path="$(PROTO_DIR)" \
		--go_out="$(TASK_OUT_DIR)" --go_opt=paths=source_relative \
		--go-grpc_out="$(TASK_OUT_DIR)" --go-grpc_opt=paths=source_relative \
		"$(PROTO_DIR)/task.proto"
	
	@echo "Генерация завершена успешно!"

clean:
	rm -f "$(TASK_OUT_DIR)"/*.pb.go
	rm -f "$(USER_OUT_DIR)"/*.pb.go
	@echo "Сгенерированные файлы удалены"

.PHONY: generate clean
