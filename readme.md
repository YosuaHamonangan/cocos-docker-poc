Prepare :

- Extract cocos editor, rename it to `cocos`
- Extract project, rename it to `project`

Build image :
`docker build -t <tag> .`

Run image :
`docker run -it --rm <tag>`

Build Cocos :
`xvfb-run wine ./cocos/CocosCreator.exe --project ./project/ --build "platform=web-desktop;debug=true"`
