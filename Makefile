build:
	@hugo -d ./dist
clean:
	@rm -r dist/*
post:
	@hugo new "posts/${POST_NAME}.md"
	@sed -i 's/title: ".*"/title: "${POST_TITLE}"/' "content/posts/${POST_NAME}.md"
help:
	@echo "build: Build the website"
	@echo "clean: Clean the /dist forlder"
	@echo "post: Create new post"
	@echo "help: Show thi help usage"