##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=CodeStuff01
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CodeStuff
ProjectPath            :=C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CodeStuff/CodeStuff01
IntermediateDirectory  :=../build-$(ConfigurationName)/CodeStuff01
OutDir                 :=../build-$(ConfigurationName)/CodeStuff01
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=logan
Date                   :=02/09/2019
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
Objects0=../build-$(ConfigurationName)/CodeStuff01/CodeFile.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/CodeStuff01/.d $(Objects) 
	@if not exist "..\build-$(ConfigurationName)\CodeStuff01" mkdir "..\build-$(ConfigurationName)\CodeStuff01"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@if not exist "..\build-$(ConfigurationName)\CodeStuff01" mkdir "..\build-$(ConfigurationName)\CodeStuff01"
	@if not exist ""..\build-$(ConfigurationName)\bin"" mkdir ""..\build-$(ConfigurationName)\bin""

../build-$(ConfigurationName)/CodeStuff01/.d:
	@if not exist "..\build-$(ConfigurationName)\CodeStuff01" mkdir "..\build-$(ConfigurationName)\CodeStuff01"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/CodeStuff01/CodeFile.cpp$(ObjectSuffix): CodeFile.cpp ../build-$(ConfigurationName)/CodeStuff01/CodeFile.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CodeStuff/CodeStuff01/CodeFile.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CodeFile.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/CodeStuff01/CodeFile.cpp$(DependSuffix): CodeFile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/CodeStuff01/CodeFile.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/CodeStuff01/CodeFile.cpp$(DependSuffix) -MM CodeFile.cpp

../build-$(ConfigurationName)/CodeStuff01/CodeFile.cpp$(PreprocessSuffix): CodeFile.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/CodeStuff01/CodeFile.cpp$(PreprocessSuffix) CodeFile.cpp


-include ../build-$(ConfigurationName)/CodeStuff01//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


