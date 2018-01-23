#!/usr/bin/pwsh
# Auto Version Manager
# 自动化版本号管理器
# 原理：
# 读取工作目录下的avm.config配置文件
# 读取配置文件中指定的版本号列表文件
# 根据参数，设置版本号，记录版本号历史

Set-Variable -name DEFAULT_AVM_CONFIG_FILE -value “avm.conf” -option constant
function ShowVersion() 
{
    
    Write-Host @"
======================================================
Auto Version Manager
自动化版本号管理器
v0.1
cqs4work@gmail.com
======================================================
"@
}

function ShowHelp()
{
    
    Write-Host @"
======================================================
用法：
-ux, update x: 升级主版本号，接口变更。
-uy, update y: 升级次版本号，向下兼容的更新。
-uz, update z: 升级修订版本号，bug修复。
-r, rollback, 回滚到上一个版本
-l, list: 列出所有版本
-c, 设置配置文件路径
======================================================
"@
}

function GetAvmConfigFilePath ($argv)
{
    $i = $args.IndexOf("-c")
    if ($argv.Count -lt $i+2)
    {
        Write-Host "参数无效，-c后面缺少配置文件路径"
        return
    }
}

function ParseConfigFile ($confFilePath) 
{
    
}

function ParseVersionListFile ($listFilePath) 
{
    return 1,2,3,5,6
}

function ListVersions($listFilePath)
{
    if(Test-Path $listFilePath)
    {
        ParseVersionListFile $listFilePath | ForEach-Object { Write-Host $_ }
    }
    else 
    {
        Write-Host "版本列表文件不存在"
    }
}

function UpdateVersion($level, $confFilePath)
{

}

function UpdateX()
{

}

function UpdateY()
{

}

function UpdateZ() {
    
}

if ($args.Count -lt 1)
{
    ShowVersion
    ShowHelp
}
else
{
    $confFilePath = GetAvmConfigFilePath($args);

    switch ($args[0]) {
        "-ux" { 
            UpdateVersion("x")
         }
        "-uy" { 

         }
        "-uz" { 

         }
        "-l" { 
            
         }
        "-r" { 

         }
        "-c" {
            Write-Host $confFilePath;
        }
        "update" { 

         }
        "rollback" { 

         }
        "list" { 

         }
        Default {
            Write-Host "未识别的选项:$args[0]"
        }
    }
}


