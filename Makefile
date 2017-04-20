all: create_container build_c2c

create_container:
	docker build -t c2_compiler_image .

build_c2c:
	docker run -v $(CURDIR)/build:/root/c2-build c2_compiler_image

