// biome-ignore lint/correctness/noNodejsModules: used during build
import path from 'node:path'

import { defineConfig } from 'vite'
import solidPlugin from 'vite-plugin-solid'

export default defineConfig({
    plugins: [solidPlugin()],

    build: {
        target: 'esnext',
        outDir: 'dist'
    },
    resolve: {
        alias: {
            '@components': path.resolve(__dirname, './src/components')
        }
    },
    server: {
        port: 3000
    },

    preview: {
        host: true,
        port: 3000
    }
})
