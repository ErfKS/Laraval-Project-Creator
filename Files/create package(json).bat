echo { >"create package(script).json"
echo     "scripts": { >>"create package(script).json"
echo         "dev": "vite", >>"create package(script).json"
echo         "build": "vite build", >>"create package(script).json"
echo         "dev": "npm run development", >>"create package(script).json"
echo         "development": "mix", >>"create package(script).json"
echo         "watch": "mix watch", >>"create package(script).json"
echo         "watch-poll": "mix watch -- --watch-options-poll=1000", >>"create package(script).json"
echo         "hot": "mix watch --hot", >>"create package(script).json"
echo         "prod": "npm run production", >>"create package(script).json"
echo         "production": "mix --production" >>"create package(script).json"
echo     } >>"create package(script).json"
echo } >>"create package(script).json"