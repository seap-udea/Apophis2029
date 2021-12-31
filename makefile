clean:
	@echo "Cleaning crap..."
	@find . -name "*~" -exec rm -rf {} \;
	@find . -name "#" -exec rm -rf {} \;

commit:
	@echo "Commiting all changes"
	@-git commit -am "Commit" 
	@-git push origin $(BRANCH)

pull:
	@echo "Getting the lattest changes"
	@-git reset --hard HEAD
	@-git pull origin $(BRANCH)

