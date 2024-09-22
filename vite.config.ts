import { defineConfig } from 'vite'
import solidPlugin from 'vite-plugin-solid'

export default defineConfig({
    plugins: [solidPlugin()],

    build: {
        target: 'esnext',
        outDir: 'dist'
    },

    server: {
        port: 3000
    },

    preview: {
        host: true,
        port: 3000
    }
})
