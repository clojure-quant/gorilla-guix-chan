

# profiles

Goal: create byte identical profiles over time that are not only shared between machines (important for deployment) but also between developers. 
Development, testing, staging, production - essentially these are all profiles!

guix package -i sambamba -p ~/opt/sambamba
Guix provides a profile file which contains the necessary shell settings into the environment
cat ~/opt/sambamba/etc/profile

1m = 1 month
 guix gc --delete-generations=1m



