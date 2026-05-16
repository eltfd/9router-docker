FROM node:22-alpine

RUN npm i -g 9router@latest --prefer-online

ENV DATA_DIR=/app/data

EXPOSE 20128

CMD ["9router", "--tray", "--skip-update"]