# Makefile for automating Hugo + Org-mode blog workflow

BLOG_DIR := ~/kvammeselvik
ORG_DIR := $(BLOG_DIR)/content
HUGO_DIR := $(BLOG_DIR)
DATE := $(shell date +'%Y-%m-%d %H:%M:%S')

export:
	@echo "📝 Exporting Org files to Hugo markdown..."
	emacs --batch -Q \
	    --load ~/.emacs.d/init.el \
	    --eval "(progn
	              (require 'ox-hugo)
	              (setq org-hugo-base-dir \"$(HUGO_DIR)\")
	              (dolist (file (directory-files-recursively \"$(ORG_DIR)\" \"\\.org$$\"))
	                (find-file file)
	                (org-hugo-export-wim-to-md t)
	                (kill-buffer)))"
	@echo "✅ Org export completed."

build:
	@echo "🏗️  Building site locally..."
	hugo --minify

serve:
	@echo "🌍 Starting local preview..."
	hugo server -D

deploy: export
	@echo "🚀 Committing and pushing to GitHub..."
	cd $(HUGO_DIR) && \
	git add . && \
	git commit -m "Update blog ($(DATE))" || echo "No changes to commit" && \
	git push
	@echo "✅ Deployment triggered via GitHub Actions."
