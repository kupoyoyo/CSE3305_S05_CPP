##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Thompson_CS3305_Assignment4
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace
ProjectPath            :=C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/Thompson_CS3305_Assignment4
IntermediateDirectory  :=$(ConfigurationName)
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=logan
Date                   :=13/10/2019
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
ObjectsFileList        :="Thompson_CS3305_Assignment4.txt"
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
Objects0=$(IntermediateDirectory)/list.cpp$(ObjectSuffix) $(IntermediateDirectory)/utility.cpp$(ObjectSuffix) $(IntermediateDirectory)/try_list_methods.cpp$(ObjectSuffix) $(IntermediateDirectory)/node1.cxx$(ObjectSuffix) 



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
	@$(MakeDirCommand) "$(ConfigurationName)"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "$(ConfigurationName)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/list.cpp$(ObjectSuffix): list.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/list.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/list.cpp$(DependSuffix) -MM list.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/Thompson_CS3305_Assignment4/list.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/list.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/list.cpp$(PreprocessSuffix): list.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/list.cpp$(PreprocessSuffix) list.cpp

$(IntermediateDirectory)/utility.cpp$(ObjectSuffix): utility.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/utility.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/utility.cpp$(DependSuffix) -MM utility.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/Thompson_CS3305_Assignment4/utility.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/utility.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/utility.cpp$(PreprocessSuffix): utility.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/utility.cpp$(PreprocessSuffix) utility.cpp

$(IntermediateDirectory)/try_list_methods.cpp$(ObjectSuffix): try_list_methods.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/try_list_methods.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/try_list_methods.cpp$(DependSuffix) -MM try_list_methods.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/Thompson_CS3305_Assignment4/try_list_methods.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/try_list_methods.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/try_list_methods.cpp$(PreprocessSuffix): try_list_methods.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/try_list_methods.cpp$(PreprocessSuffix) try_list_methods.cpp

$(IntermediateDirectory)/node1.cxx$(ObjectSuffix): node1.cxx
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/node1.cxx$(ObjectSuffix) -MF$(IntermediateDirectory)/node1.cxx$(DependSuffix) -MM node1.cxx
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/Thompson_CS3305_Assignment4/node1.cxx" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/node1.cxx$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/node1.cxx$(PreprocessSuffix): node1.cxx
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/node1.cxx$(PreprocessSuffix) node1.cxx


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(ConfigurationName)/


