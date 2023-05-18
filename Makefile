NETWORK=sheepadv_default
HOST=sheepadv
psql:
	sudo docker run --rm -it --network=$(NETWORK) postgres psql -h $(HOST) -U postgres -W

pgadmin-install:
	sudo apt update 
	sudo apt install 

# restore:
# 	sudo pg_restore -c -U postgres -d dvdrental -v "/home/yale918/Downloads/dvdrental.tar" -W

# -c to clean the database
# -U to force a user
# -d to select the database
# -v verbose mode, don't know why
# "$$" the location of the files to import in tmp to get around permission issues
# -W to force asking for the password to the user (postgres)