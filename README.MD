This Repo serves as a version control for a deployable Beam-NG Server.

To deploy use git:
# Step 1: Build container
docker-compose build

# Step 2: Start server
docker-compose up -d

# Step 3: Monitor usage
./monitor-beammp.sh