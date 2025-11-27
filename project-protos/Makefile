PROJECT_ROOT = /mnt/d/My-Project/project-protos
PROTO_DIR = $(PROJECT_ROOT)/proto
ANALYTICS_OUT_DIR = $(PROTO_DIR)/analytics
COMMENT_OUT_DIR   = $(PROTO_DIR)/comment
PROFILE_OUT_DIR   = $(PROTO_DIR)/profile
ROLE_OUT_DIR      = $(PROTO_DIR)/role
TASK_OUT_DIR      = $(PROTO_DIR)/task
USER_OUT_DIR      = $(PROTO_DIR)/user

generate:
	# Создаем папки для выходных файлов
	mkdir -p "$(ANALYTICS_OUT_DIR)"
	mkdir -p "$(COMMENT_OUT_DIR)"
	mkdir -p "$(PROFILE_OUT_DIR)"
	mkdir -p "$(ROLE_OUT_DIR)"
	mkdir -p "$(TASK_OUT_DIR)"
	mkdir -p "$(USER_OUT_DIR)"

	# Генерация analytics.proto
	protoc \
		--proto_path="$(PROTO_DIR)" \
		--go_out="$(ANALYTICS_OUT_DIR)" --go_opt=paths=source_relative \
		--go-grpc_out="$(ANALYTICS_OUT_DIR)" --go-grpc_opt=paths=source_relative \
		"$(PROTO_DIR)/analytics.proto"

	# Генерация comment.proto
	protoc \
		--proto_path="$(PROTO_DIR)" \
		--go_out="$(COMMENT_OUT_DIR)" --go_opt=paths=source_relative \
		--go-grpc_out="$(COMMENT_OUT_DIR)" --go-grpc_opt=paths=source_relative \
		"$(PROTO_DIR)/comment.proto"

	# Генерация profile.proto
	protoc \
		--proto_path="$(PROTO_DIR)" \
		--go_out="$(PROFILE_OUT_DIR)" --go_opt=paths=source_relative \
		--go-grpc_out="$(PROFILE_OUT_DIR)" --go-grpc_opt=paths=source_relative \
		"$(PROTO_DIR)/profile.proto"

	# Генерация role.proto
	protoc \
		--proto_path="$(PROTO_DIR)" \
		--go_out="$(ROLE_OUT_DIR)" --go_opt=paths=source_relative \
		--go-grpc_out="$(ROLE_OUT_DIR)" --go-grpc_opt=paths=source_relative \
		"$(PROTO_DIR)/role.proto"

	# Генерация user.proto
	protoc \
		--proto_path="$(PROTO_DIR)" \
		--go_out="$(USER_OUT_DIR)" --go_opt=paths=source_relative \
		--go-grpc_out="$(USER_OUT_DIR)" --go-grpc_opt=paths=source_relative \
		"$(PROTO_DIR)/user.proto"

	# Генерация task.proto
	protoc \
		--proto_path="$(PROTO_DIR)" \
		--go_out="$(TASK_OUT_DIR)" --go_opt=paths=source_relative \
		--go-grpc_out="$(TASK_OUT_DIR)" --go-grpc_opt=paths=source_relative \
		"$(PROTO_DIR)/task.proto"

	@echo "Генерация завершена успешно!"


clean:
	rm -f $(ANALYTICS_OUT_DIR)/*.pb.go
	rm -f $(COMMENT_OUT_DIR)/*.pb.go
	rm -f $(PROFILE_OUT_DIR)/*.pb.go
	rm -f $(ROLE_OUT_DIR)/*.pb.go
	rm -f $(TASK_OUT_DIR)/*.pb.go
	rm -f $(USER_OUT_DIR)/*.pb.go
	@echo "Сгенерированные файлы удалены"

.PHONY: generate clean
