
CDK_VERSION=2.9
JAR_DIR=cdk/cdk-cdk-$(CDK_VERSION)/bundle/target/cdk-bundle-$(CDK_VERSION)/WEB-INF/lib

cdk.zip:
	wget -O cdk.zip https://github.com/cdk/cdk/archive/refs/tags/cdk-$(CDK_VERSION).zip
	

build: cdk.zip
	unzip cdk.zip -d cdk
	# 88 - 92 is cdk-pdb
	# 148-157 is cdk-builder3d and builder3d-tools
	# 238-242 is cdk-pdbcml
	# 343-337 is cdk-iordf 
	# sed -i .bak -e '88,92d;148,157d;238,242d;343,347d;' cdk/cdk-cdk-$(CDK_VERSION)/bundle/pom.xml
	cd cdk/cdk-cdk-$(CDK_VERSION)/bundle && mvn compile war:war -P jdk11-plus && cd ../../..


prepare: build
	# find cdk/ -name "*.jar" | parallel "cp {}  inst/cont/{/}"	
	cp $(JAR_DIR)/*jar inst/cont/


clean:
	rm cdk.zip
	rm -rf cdk/


all: clean prepare

