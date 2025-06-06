set(v_IntegratedToolName NiflectGenTool)
set(v_IntegratedToolRootDirPath ${c_RootThirdPartyDirPath}/${v_IntegratedToolName})
set(v_UnzippedDirPath ${v_IntegratedToolRootDirPath}/${v_IntegratedToolName})
set(v_ZipFileName ${v_IntegratedToolName}.zip)
set(v_SrcZipAddrFilePath ${c_StorageAddrPath}/Release/${c_ProjectPlatform}/${v_ZipFileName})
if(WIN32)
    set(v_SrcZipCloudFilePath https://drive.usercontent.google.com/download?id=1oMzZ_FLi7Fr0Otqi30f1PuX5PnfT1RD0&export=download&authuser=0&confirm=t&uuid=b3584082-93e0-49f1-af98-97bcf1f5716b&at=ALoNOgmur6I4mwf6-RHo_Wh2pr8P:1748670799388)
elseif(LINUX)
    set(v_SrcZipCloudFilePath https://drive.usercontent.google.com/download?id=1Q2WGtpVsj1nuqklss_NIG6U9jp2mB77U&export=download&authuser=0&confirm=t&uuid=8be536bd-cead-4367-8c29-c45d50a1b51e&at=ALoNOgksOEZp6n64z5sNd4rWHEnx:1748670830280)
else()
	message(FATAL_ERROR "Platform not supported")
endif()
set(v_NiflectGenToolBinDirPath ${v_UnzippedDirPath}/build/${c_ProjectPlatform}/${c_ProjectArch}/Release/${c_BinDirName})

include(${c_RootCMakeProjectFrameworkDirPath}/IntegrateNiflectGenTool.cmake)