apply:
	PATH=${PATH}:/Users/${USER}/Library/Python/3.8/bin/
ifdef tags
	ansible-playbook -i "localhost," -c local ansible_osx.yml --ask-become-pass -t $(tags)
else
	ansible-playbook -i "localhost," -c local ansible_osx.yml --ask-become-pass
endif

bootstrap:
ifeq (, $(shell which brew))
 	xcode-select --install
	echo "Installing brew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo "Installing brew cask..."
	brew tap homebrew/cask
else
	echo "homebrew is already installed."
endif

ifeq (, $(shell which ansible-galaxy))
 	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
	python3 get-pip.py --user
	python3 -m pip install --user ansible
else
	echo "ansible is already installed."
endif

	PATH=${PATH}:/Users/${USER}/Library/Python/3.8/bin/
	ansible-galaxy install -r requirements.yml
	ansible-playbook -i "localhost," -c local ansible_osx.yml --ask-become-pass