bash:
	docker run --rm -it \
		-v $(CURDIR):/app \
		 -p 3002:3000 \
		 toroia/nodejs \
		 bash

dev1:
	docker run --rm -it \
    		-v $(CURDIR):/app \
    		 -p 3005:3000 \
    		--name mockup1\
    		 toroia/nodejs \
    		 bash \
    		 cd MockUp1/ \
    		 yarn dev

dev2:
	docker run --rm -it \
			-v $(CURDIR):/app \
			 -p 3006:3000 \
			--name mockup1\
			 toroia/nodejs \
			 bash \
			 cd MockUp2/ \
			 yarn dev

