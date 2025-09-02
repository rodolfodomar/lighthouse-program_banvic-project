# Step 1: Define the base image
FROM python:3.9-slim

# Step 2: Set the working directory
WORKDIR /app

# --- MODIFICATION START ---
# Step 3: Update pip to the latest version inside the container
# This is a best practice to avoid installation issues
RUN python -m pip install --upgrade pip
# --- MODIFICATION END ---

# Step 4: Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the rest of the project
COPY . .