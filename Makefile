bootstrap_version = 3.3.7
bootstrap_pkg = bootstrap-$(bootstrap_version)-dist.zip

prepare: assets/bs/css/bootstrap.css

$(bootstrap_pkg):
	wget https://github.com/twbs/bootstrap/releases/download/v$(bootstrap_version)/$@

assets/bs/css/bootstrap.css: $(bootstrap_pkg)
	unzip $(bootstrap_pkg) -d assets
	mv assets/bootstrap-$(bootstrap_version)-dist assets/bs
	touch $@ -r $(bootstrap_pkg)

clean:
	rm -rf assets/bs
	rm $(bootstrap_pkg)
