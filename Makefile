
up:
	docker run \
		--name $$(basename $$PWD) $(: # name the container based on the current directory name) \
		--rm                      $(: # delete container after it is shutdown, no state is needed) \
		-it                       $(: # allocate a tty for signals and stdin) \
		-v $$PWD:/home/jovyan     $(: # persist workspace and settings) \
		-p 8888:8888              $(: # use the default port) \
		jupyter/scipy-notebook
