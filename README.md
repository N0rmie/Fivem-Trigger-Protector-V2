# Fivem-Trigger-Protector-V2
<br />
<p align="center">
  <p align="center">
    An advanced system that is prepared to detect FiveM Trigger executors and protect your servers!
    <br />
    If you need help or something you can open a issue.
    <img src="https://github.com/N0rmie/Fivem-Trigger-Protector/blob/main/image.png?raw=true">
  </p>
</p>

## Usage

* Inside the resource folder put "n0rmie_0trigger"
* On yor server.cfg start "n0rmie_0trigger" as the first script
* [Optional] Obfuscate files - recommended free obfuscator > [LuaObfuscator](https://luaobfuscator.com)
* Once the server (and script) has started, write on the console: "n0rmie install"
* Wait until installed
* Reboot server
* To protect a trigger:
<div align="center">

| Original        | Protected           | Description |
| ------------- |:-------------:|:--------------:|
| TriggerServerEvent("test")      | secured_TriggerServerEvent("test") | Protected ✅ |
| AddEventHandler("test") | secured_AddEventHandler("test") | Protected ✅ |
| RegisterServerEvent("test") | secured_RegisterServerEvent("test") | Protected ✅ |
| RegisterNetEvent("test") | secured_RegisterNetEvent("test") | Protected ✅ |
| TriggerEvent("test") | secured_TriggerEvent("test") | Protected ✅ |
| TriggerClientEvent("test") | secured_TriggerClientEvent("test") | Protected ✅ |

</h4>
* ONLY ADVANCED USERS (could break your server) - For more security, change the convar "n0rmie_89wASdnESCnWWCKSZT2CNnoog7Y6q2U6" to a spoofed one (remember both on the script and the atrigger.lua before installing)

## This is a Beta version, soon i will publish the right doc with examples... (If any issues found, please notify me on the issues tab)

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contribute to the project
Help the community by contributing to the project! <3

## Thx
- Thanks to [VisiBait](https://github.com/visibait) for the installer (found on the old published VB-AC)
