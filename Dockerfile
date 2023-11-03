FROM node:18-alpine
LABEL org.opencontainers.image.authors="-"

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

RUN apk add --no-cache libc6-compat dumb-init

COPY package.json pnpm-lock.yaml ./
RUN pnpm install

COPY . .
RUN pnpm run build

ENTRYPOINT ["dumb-init", "--"]
CMD [ "node", ".output/server/index.mjs" ]
