##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Lab01
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/NewWorkspace
ProjectPath            :=C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/NewWorkspace/Lab01
IntermediateDirectory  :=../build-$(ConfigurationName)/Lab01
OutDir                 :=../build-$(ConfigurationName)/Lab01
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=logan
Date                   :=29/08/2019
CodeLitePath           :=C:/CodeLite
LinkerName             :=C:/MinGW_Compiler/mingw64/bin/g++.exe
SharedObjectLinkerName :=C:/MinGW_Compiler/mingw64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=..\build-$(ConfigurationName)\bin\$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
RcCmpOptions           := 
RcCompilerName         :=C:/MinGW_Compiler/mingw64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/MinGW_Compiler/mingw64/bin/ar.exe rcu
CXX      := C:/MinGW_Compiler/mingw64/bin/g++.exe
CC       := C:/MinGW_Compiler/mingw64/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/MinGW_Compiler/mingw64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\CodeLite
Objects0=../build-$(ConfigurationName)/Lab01/statexam.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Lab01/statimp.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/Lab01/.d $(Objects) 
	@if not exist "..\build-$(ConfigurationName)\Lab01" mkdir "..\build-$(ConfigurationName)\Lab01"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@if not exist "..\build-$(ConfigurationName)\Lab01" mkdir "..\build-$(ConfigurationName)\Lab01"
	@if not exist ""..\build-$(ConfigurationName)\bin"" mkdir ""..\build-$(ConfigurationName)\bin""

../build-$(ConfigurationName)/Lab01/.d:
	@if not exist "..\build-$(ConfigurationName)\Lab01" mkdir "..\build-$(ConfigurationName)\Lab01"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/Lab01/statexam.cpp$(ObjectSuffix): statexam.cpp ../build-$(ConfigurationName)/Lab01/statexam.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/NewWorkspace/Lab01/statexam.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/statexam.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Lab01/statexam.cpp$(DependSuffix): statexam.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Lab01/statexam.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Lab01/statexam.cpp$(DependSuffix) -MM statexam.cpp

../build-$(ConfigurationName)/Lab01/statexam.cpp$(PreprocessSuffix): statexam.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Lab01/statexam.cpp$(PreprocessSuffix) statexam.cpp

../build-$(ConfigurationName)/Lab01/statimp.cpp$(ObjectSuffix): statimp.cpp ../build-$(ConfigurationName)/Lab01/statimp.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/NewWorkspace/Lab01/statimp.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/statimp.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Lab01/statimp.cpp$(DependSuffix): statimp.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Lab01/statimp.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Lab01/statimp.cpp$(DependSuffix) -MM statimp.cpp

../build-$(ConfigurationName)/Lab01/statimp.cpp$(PreprocessSuffix): statimp.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Lab01/statimp.cpp$(PreprocessSuffix) statimp.cpp


-include ../build-$(ConfigurationName)/Lab01//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


