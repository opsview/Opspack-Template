# CDs to an opspack's plugins directory, builds the go sources and shouts the list of executables
define build_go_sources
cd $(1)/plugins && \
go build -ldflags "-s -w" -v *.go
endef

# Remove all go files in the given opspack folder
define remove_go_sources
cd $(1)/plugins && \
rm *.go
endef

define remove_readme_plugin_link
cd $(1)/plugins && \
rm README.md
endef

define view_files
ls -l
endef

#Uses govendor tool to add all depencies into vendor.json (for .go files only)
define govendor
go get -u github.com/kardianos/govendor && \
cd $(GOPATH)/src && \
govendor init && \
govendor sync && \
govendor add +external && \
govendor fetch +missing && \
govendor list
endef

view_directory:
	ls -l

create_opspack:
	$(call govendor) || $(call view_files)

	$(call build_go_sources,$$OPSPACK_NAME) || $(call view_files)

	$(call remove_go_sources,$$OPSPACK_NAME) || $(call view_files)

	$(call remove_readme_plugin_link,$$OPSPACK_NAME) || $(call view_files)

	ls -l $$OPSPACK_NAME/plugins
	tar -zcvf $$OPSPACK_NAME.opspack $$OPSPACK_NAME
