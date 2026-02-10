PROTO_DIR := proto
OUT_DIR := gen/pb

.PHONY: gen clean

gen:
	@mkdir -p $(OUT_DIR)
	protoc \
		--proto_path=$(PROTO_DIR) \
		--go_out=$(OUT_DIR) \
		--go_opt=paths=source_relative \
		--go-grpc_out=$(OUT_DIR) \
		--go-grpc_opt=paths=source_relative \
		$(shell find $(PROTO_DIR) -name '*.proto')

clean:
	rm -rf $(OUT_DIR)
