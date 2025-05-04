.PHONY: icons splash runner upgrade clean

icons:
	@echo "Generating launcher icons"
	@flutter pub run flutter_launcher_icons

splash:
	@echo "Generating splash screen"
	@dart run flutter_native_splash:create

runner:
	@echo "Running build-runner"
	@dart run build_runner build -d

upgrade:
	@echo "Upgrading project"
	@flutter pub get
	@flutter pub upgrade
	@flutter pub upgrade --major-versions

clean:
	@echo "Cleaning project"
	@flutter clean
	@flutter pub get
