CDK_VERSION=2.13
BASE_URL=https://github.com/cdk/cdk/releases/download/cdk-$(CDK_VERSION)
JAR=cdk-$(CDK_VERSION).jar
SUMS=cdk-$(CDK_VERSION)-checksums-sha256.txt

# Download the CDK release uberjar, verify it, and install it in inst/cont
prepare:
	mkdir -p build
	curl -fL -o build/$(JAR) $(BASE_URL)/$(JAR)
	curl -fL -o build/$(SUMS) $(BASE_URL)/$(SUMS)
	cd build && grep " $(JAR)$$" $(SUMS) | shasum -a 256 -c -
	rm -f inst/cont/*.jar
	cp build/$(JAR) inst/cont/

clean:
	rm -rf build

all: clean prepare
