##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Thompson_CS3305_Lab5
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace
ProjectPath            :=C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/Thompson_CS3305_Lab5
IntermediateDirectory  :=$(ConfigurationName)
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=logan
Date                   :=03/10/2019
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
ObjectsFileList        :="Thompson_CS3305_Lab5.txt"
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
Objects0=$(IntermediateDirectory)/up_node1.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_sequence_exam3.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_sequence3.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/up_node1.cpp$(ObjectSuffix): ../node1.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_node1.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_node1.cpp$(DependSuffix) -MM ../node1.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/node1.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_node1.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_node1.cpp$(PreprocessSuffix): ../node1.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_node1.cpp$(PreprocessSuffix) ../node1.cpp

$(IntermediateDirectory)/up_sequence_exam3.cpp$(ObjectSuffix): ../sequence_exam3.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_sequence_exam3.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_sequence_exam3.cpp$(DependSuffix) -MM ../sequence_exam3.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/sequence_exam3.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_sequence_exam3.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_sequence_exam3.cpp$(PreprocessSuffix): ../sequence_exam3.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_sequence_exam3.cpp$(PreprocessSuffix) ../sequence_exam3.cpp

$(IntermediateDirectory)/up_sequence3.cpp$(ObjectSuffix): ../sequence3.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_sequence3.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_sequence3.cpp$(DependSuffix) -MM ../sequence3.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/sequence3.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_sequence3.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_sequence3.cpp$(PreprocessSuffix): ../sequence3.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_sequence3.cpp$(PreprocessSuffix) ../sequence3.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(ConfigurationName)/


