FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ca-certificates \
    ttf-freefont \
    nodejs \
    npm

RUN npm install playwright

ENV PLAYWRIGHT_BROWSERS_PATH=/ms-playwright

USER node
