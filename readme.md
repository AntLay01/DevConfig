# Dev config

Anotaciones y configuración para: **win-terminal**, **cursor-editor** y **.git**

- Windows Terminal.
- VS Code.
- Sublime Text 3.
- Git.

## ```/terminal```

Configuración inicial para la terminal de windows con persistencia a comandos y atajos:

**- Paso 1**: Crear una carpeta para _**macros**_ con el archivo ejem: ```C:/bat/macros.doskey```.

**- Paso 2**: Ir al registro de windows ```Win + R```  ingresa el comando _**regedit**_ y la ruta ``` HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor\ ``` y crear el archivo ```Autorun``` como ```String Value``` y en su value setear ```DOSKEY /MACROFILE="C:\bat\macros.doskey"``` al macrofile con el path de nuestro macros.

**- Paso 3**: Al abrir **Windows terminal** ir a la configuración y en **Prompt command**  verificar que el _profile_ de la linea de comandos apunte a ```C:\WINDOWS\System32\cmd.exe``` por defecto hace referencia al ```%SystemRoot%```

**- Paso 4**: El archivo adjunto en ```/terminal``` contiene comentarios basados en la sintaxis ```.bat``` eliminarlos para omitir el error ```invalid macro definition.```

**Recursos y referencias**:

- DOSKEY persistent: https://superuser.com/questions/1134368/create-permanent-doskey-in-windows-cmd
- MSDOS commands: https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/doskey
- PROMP syntaxt: https://ss64.com/nt/prompt.html

**- Paso 5**: Para hacer referencia a comandos de **bash** es requisito instalar **git** y luego copiar ```path.txt``` las rutas de git ```C:\Program Files\Git\usr\bin```.

**- Paso 6**: Para alias y shorcuts en el archivo ```terminal-config.json```

**Nota**: en la carpeta ```/terminal/originals``` son todos los archvios listaos para copiar en ```/bat```.

## ```/vscode```

Configuración para **cursor-editor** y cambiar los _**shortcuts**_, _**themes**_ y  _**extensions**_:

**- SHORTCUTS**: Para configurar los shortcut parecidos a los de sublime instalar la extension ```Sublime Text Keymap and Settings Importer``` e ir a **Preferences>Open Keyboard shortcuts JSON** y copiar el json de ```/editor/keybindings.json```.

**- THEMES && EXTENSIONS**: Para configurar parte del tema agregar el tema **EgoistOne** e ir a **Preference>Open User Settings Json** y copiar el json de ```/editor/settings.json```.

**- SNIPPETS**: Para los snippets copiar ```/vscode/snippets``` en ```...\AppData\Roaming\Cursor\User\snippets```.

## ```/sublime```

Configuración para **sublime text 3** y cambiar  los _**shortcuts**_, _**snippets**_ y  _**extensions & lsp**_:

**- SHORTCUTS**: Para configurar los shortcuts se encuentran en la base de la carpeta```/sublime``` para setear la configuración copiar y pegar los archivos en ```C:\Users\{user}\AppData\Roaming\Sublime Text\Packages\User```.

**- SNIPPETS**: Para los snippets copiar los archivos de la carpeta ```/sublime/snippets``` en la ruta ```C:\Users\{user}\AppData\Roaming\Sublime Text\Packages\User```.

**- EXTENSIONS & LSP**: El listado de paquetes en el archivo: ```/sublime/Package Control.sublime-settings```, para la configuración de los ```lsp & otros``` en ```/sublime/packages```, recomendable instalar los paquetes primero y luego configurar según _package_.

- **Nota:** Para los template literals en el archivo https://gist.github.com/mikermcneil/cfaf0c63a50fe56fd85d1d8dd9f27f4b

## ```/git```

Configuración para .git:

- Usar el archivo config de ```/git``` y el archivo ```config``` para administrar **.ssh** en la ruta ```C:\Users\{user}\.ssh```.
- Usat el archivo ```.gitconfig``` para setear los atajos en **git** en la ruta base de - ```C:\Users\{user}```.
- Para menjar multiples claves **ssh** [guia-windows](https://youtu.be/6lA0oPoFCAE), ejemplos en el folder ```/git/multiple```, recuerda añadir los shh keys en la ruta correspondiente. 
- Al manejar multiples claves .ssh es importante tener de referencia nuestro Host  ```main``` aqui un ejemplo:
```
Host main
	HostName github.com
	User git
	Port 8080
    IdentityFile ~/.ssh/id_main
	IdentitiesOnly yes
```
- Nuestro alias Host ```main``` es la referencia para clonar nuestros repositorios aqui un ejemplo:
```
generalmente: git@github.com:Lyserion99/DevConfig.git // por defecto
ssh-alias: main:Lyserion99/DevConfig.git <-- con alias
```

## ```web.config```

- Archivo de configuración para windows server by (kj91024).