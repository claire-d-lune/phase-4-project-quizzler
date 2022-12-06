import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  server: {
    port: 3000, // changed my outgoing port to 3000 instead of the default 5173
    proxy: {
        '/api': { // changed my proxy path to /api
          target: 'http://127.0.0.1:4000/', // whenever we type /api in our fetch it will be recognized as this route
          changeOrigin: true, 
          secure: false, // handle security issues 
          rewrite: (path) => path.replace(/^\/api/, "") // rewrite the path to remove the /api
      },
    },
  },
  plugins: [react()]
})
