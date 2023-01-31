--
--      //===========================================\\
--      //#############################################\\
--     //#################  BY N0RMIE ##################\\
--    //######### https://github.com/N0rmie #############\\
--   //###################################################\\
--  //###########    THIS IS FREE DON´T SKID    ###########\\
-- //=======================================================\\

local _wait = Citizen.Wait

SetConvarReplicated("n0rmie_89wASdnESCnWWCKSZT2CNnoog7Y6q2U6", os.time())

if not IsDuplicityVersion() then 
    print("^7[^6!N0rmie^7 - ^1Error^7] Loaded on client!")
    StopResource(GetCurrentResourceName())
else
    
    AddEventHandler('n0rmie_ban', function(target, args)
        local _src = source
        if target ~= nil then
            if args ~= nil then
                local x_src = target
                print("^7[^6!N0rmie^7 Trigger Protector] Trigger Executor. User: "..x_src.. " Additional Info: "..args)
                DropPlayer(x_src, "[^6!N0rmie^7 Trigger Protector] Trigger execution detected!")
            else
                print("[!N0rmie Trigger Protector] Trigger Executor. User: ".._src)
                DropPlayer(_src, "^7[^6!N0rmie^7 Trigger Protector] Trigger execution detected!")
            end
        else
            print("^7[^6!N0rmie^7 Trigger Protector] ^1Trigger Executor. User: ".._src)
            DropPlayer(_src, "[!N0rmie Trigger Protector] Trigger execution detected!")
        end
    end)

    local function helpMe()
        print("^7[^6!N0rmie^7] ^N0rmie 0Trigger ^5 Commands: ^7")
        print("^7[^6!N0rmie^7] ^2n0rmie install    >> ^5Deploy 0Trigger System. ^7")
        print("^7[^6!N0rmie^7] ^2n0rmie uninstall  >> ^5Uninstall 0Trigger System. ^7")
    end

    local function Install()
        local count = 0
        local skip = 0
        _0trigfile = LoadResourceFile(GetCurrentResourceName(), "atrigger.lua")
        for resources = 0, GetNumResources() - 1 do
            local _resname = GetResourceByFindIndex(resources)
            _resourcemanifest = LoadResourceFile(_resname, "__resource.lua")
            _resourcemanifest2 = LoadResourceFile(_resname, "fxmanifest.lua")
            if _resourcemanifest then
                Wait(100)
                _toadd = "--------- Protected By !N0rmie / github.com/N0rmie\nshared_script 'atrigger.lua'\n--------- Protected By !N0rmie / github.com/N0rmie\n" .. _resourcemanifest
                SaveResourceFile(_resname, "atrigger.lua", _0trigfile, -1)
                SaveResourceFile(_resname, "__resource.lua", _toadd, -1)
                print("^7[^6!N0rmie^7] | ^2 Loaded protection in > ^7".._resname)
                count = count + 1
            elseif _resourcemanifest2 then
                Wait(100)
                _toadd = "--------- Protected By !N0rmie / github.com/N0rmie\nshared_script 'atrigger.lua'\n--------- Protected By !N0rmie / github.com/N0rmie\n" .. _resourcemanifest2
                SaveResourceFile(_resname, "atrigger.lua", _0trigfile, -1)
                SaveResourceFile(_resname, "fxmanifest.lua", _toadd, -1)
                print("^7[^6!N0rmie^7] | ^2 Loaded protection in > ^7".._resname)
                count = count + 1
            else
                skip = skip + 1
                print("^7[^6!N0rmie^7] | ^1Not compatible script detected > ^7" .._resname)
            end
        end
        print("^7[^6!N0rmie^7] | ^2Finished loading protection on ^7"..count.."^2 scripts - Skipped ^7"..skip.."^2")
    end
    
    local function Uninstall()
        local count = 0
        local skip = 0
        for resources = 0, GetNumResources() - 1 do
            local _resname = GetResourceByFindIndex(resources)
            if _resname ~= GetCurrentResourceName() then
                _resourcemanifest = LoadResourceFile(_resname, "__resource.lua")
                _resourcemanifest2 = LoadResourceFile(_resname, "fxmanifest.lua")
                if _resourcemanifest then
                    Wait(100)
                    _toadd = _resourcemanifest:gsub("shared_script 'atrigger.lua'", "")
                    _toadd = _toadd:gsub("--------- Protected By !N0rmie / github.com/N0rmie", "")
                    SaveResourceFile(_resname, "__resource.lua", _toadd, -1)
                    os.remove(GetResourcePath(_resname).."/atrigger.lua")
                    print("^7[^6!N0rmie^7] | ^2Unloaded > ^7".._resname)
                    count = count + 1
                end
                if _resourcemanifest2 then
                    Wait(100)
                    _toadd = _resourcemanifest2:gsub("shared_script 'atrigger.lua'", "")
                    _toadd = _toadd:gsub("--------- Protected By !N0rmie / github.com/N0rmie", "")
                    SaveResourceFile(_resname, "fxmanifest.lua", _toadd, -1)
                    os.remove(GetResourcePath(_resname).."/atrigger.lua")
                    print("^7[^6!N0rmie^7] | ^2Unloaded > ^7".._resname)
                    count = count + 1
                end
                if not _resourcemanifest and not _resourcemanifest2 then
                    skip = skip + 1
                    print("^7[^6!N0rmie^7] | ^2Not compatible script detected > ^7" .._resname)
                end              
            end
        end
        print("^7[^6!N0rmie^7] | ^2Finished unloading protection on ^7"..count.."^2 scripts - Skipped ^7"..skip.."^2")
    end
    
    RegisterCommand("n0rmie" , function(source , args , rawCommand)
        if args[1] then
            if args[1] == "install" then
                if source == 0 then
                    Install()
                    print("^7[^6!N0rmie^7] ^20Trigger has been installed, exiting server...^7")
                    Wait(5000)
                    os.exit()
                end
            elseif args[1] == "uninstall" then
                if source == 0 then
                    Uninstall()
                    print("^7[^6!N0rmie^7] ^20Trigger has been uninstalled, exiting server...^7")
                    Wait(5000)
                    os.exit()
                end
            else
                helpMe()
            end
        else
            helpMe()
        end
    end)
    _wait(15000)
    print("^7[^6!N0rmie^7 - ^5Loader^7] ^2Loaded on server!")
end