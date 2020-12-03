packer_build_oracle:
	packer build -force --var-file=variables-oracle-7.json oracle-7.json

packer_build_windows:
	packer build -force --var-file=variables-windows-server-2019.json windows-server-2019.json

packer_build_oracle:
	packer build -force --var-file=variables-ubuntu-18.json ubuntu-18.json
