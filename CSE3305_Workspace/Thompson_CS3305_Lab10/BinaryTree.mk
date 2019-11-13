##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=BinaryTree
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace
ProjectPath            :=C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/Thompson_CS3305_Lab10
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=logan
Date                   :=06/11/2019
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
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="BinaryTree.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
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
Objects0=$(IntermediateDirectory)/build_tree.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/build_tree.cpp$(ObjectSuffix): build_tree.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/build_tree.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/build_tree.cpp$(DependSuffix) -MM build_tree.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/Thompson_CS3305_Lab10/build_tree.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/build_tree.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/build_tree.cpp$(PreprocessSuffix): build_tree.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/build_tree.cpp$(PreprocessSuffix) build_tree.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/Thompson_CS3305_Lab10/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


