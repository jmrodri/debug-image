BUILD_DIR = build
GO_ASMFLAGS = -asmflags "all=-trimpath=$(shell dirname $(PWD))"
GO_GCFLAGS = -gcflags "all=-trimpath=$(shell dirname $(PWD))"

# .PHONY: build
# build:
#     @mkdir -p $(BUILD_DIR)

.PHONY: build/scorecard-test-kuttl
build/scorecard-test-kuttl:
	go build $(GO_GCFLAGS) $(GO_ASMFLAGS) -o $(BUILD_DIR)/$(@F) ./images/$(@F)
