import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  build: {
    rollupOptions: {
      output: {
        // React en Supabase veranderen veel minder vaak dan de app zelf. Door ze
        // apart te bundelen blijft de app-chunk kleiner en kan de browser de
        // vendorbestanden bij een nieuwe deploy uit cache hergebruiken.
        manualChunks(id) {
          if (!id.includes('node_modules')) return undefined
          if (id.includes('@supabase')) return 'supabase'
          if (id.includes('/react/') || id.includes('/react-dom/') || id.includes('scheduler')) return 'react'
          return 'vendor'
        }
      }
    }
  }
})
