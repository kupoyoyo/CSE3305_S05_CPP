##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Thompson_CS3305_Lab3
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace
ProjectPath            :=C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/Thompson_CS3305_Lab3
IntermediateDirectory  :=../build-$(ConfigurationName)/Thompson_CS3305_Lab3
OutDir                 :=../build-$(ConfigurationName)/Thompson_CS3305_Lab3
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=logan
Date                   :=13/09/2019
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
Objects0=../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_set.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_test_set.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/Thompson_CS3305_Lab3/.d $(Objects) 
	@if not exist "..\build-$(ConfigurationName)\Thompson_CS3305_Lab3" mkdir "..\build-$(ConfigurationName)\Thompson_CS3305_Lab3"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@if not exist "..\build-$(ConfigurationName)\Thompson_CS3305_Lab3" mkdir "..\build-$(ConfigurationName)\Thompson_CS3305_Lab3"
	@if not exist ""..\build-$(ConfigurationName)\bin"" mkdir ""..\build-$(ConfigurationName)\bin""

../build-$(ConfigurationName)/Thompson_CS3305_Lab3/.d:
	@if not exist "..\build-$(ConfigurationName)\Thompson_CS3305_Lab3" mkdir "..\build-$(ConfigurationName)\Thompson_CS3305_Lab3"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_set.cpp$(ObjectSuffix): ../set.cpp ../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_set.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/set.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_set.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_set.cpp$(DependSuffix): ../set.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_set.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_set.cpp$(DependSuffix) -MM ../set.cpp

../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_set.cpp$(PreprocessSuffix): ../set.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_set.cpp$(PreprocessSuffix) ../set.cpp

../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_test_set.cpp$(ObjectSuffix): ../test_set.cpp ../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_test_set.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/test_set.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_test_set.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_test_set.cpp$(DependSuffix): ../test_set.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_test_set.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_test_set.cpp$(DependSuffix) -MM ../test_set.cpp

../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_test_set.cpp$(PreprocessSuffix): ../test_set.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Thompson_CS3305_Lab3/up_test_set.cpp$(PreprocessSuffix) ../test_set.cpp


-include ../build-$(ConfigurationName)/Thompson_CS3305_Lab3//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


