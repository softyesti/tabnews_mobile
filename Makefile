icons:
	@echo "Generating launcher icons"
	@flutter pub run flutter_launcher_icons

splash:
	@echo "Generating splash screen"
	@dart run flutter_native_splash:create  

clean:
	@echo "Cleaning project"
	@flutter clean
	@flutter pub get
	@flutter pub upgrade
	@flutter pub upgrade --major-versions
