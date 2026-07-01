# 🏰 Start with the Royal Weapon Store
FROM node:18-alpine

# 🏕️ Create Bheem's Battle Camp
WORKDIR /app

# 📜 Bring the Mission Instructions
COPY package*.json ./

# ⚔️ Prepare all Battle Weapons
RUN npm ci --only=production

# 🛡️ Bring all Soldiers into the Camp
COPY soldiers/ ./soldiers/

# 👦 Only Bheem can command the army
USER bheem

# 🚪 Open the Battle Gate
EXPOSE 3000

# 🚀 Start the Final Battle
CMD ["node","src/app.js"]