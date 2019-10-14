##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Thompson_CS3305_Lab6
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace
ProjectPath            :=C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/Thompson_CS3305_Lab6
IntermediateDirectory  :=$(ConfigurationName)
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=logan
Date                   :=10/10/2019
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
ObjectsFileList        :="Thompson_CS3305_Lab6.txt"
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
Objects0=$(IntermediateDirectory)/node1.cpp$(ObjectSuffix) $(IntermediateDirectory)/check_lists.cpp$(ObjectSuffix) $(IntermediateDirectory)/bag_diff3.cpp$(ObjectSuffix) $(IntermediateDirectory)/bag3.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/node1.cpp$(ObjectSuffix): node1.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/node1.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/node1.cpp$(DependSuffix) -MM node1.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/Thompson_CS3305_Lab6/node1.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/node1.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/node1.cpp$(PreprocessSuffix): node1.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/node1.cpp$(PreprocessSuffix) node1.cpp

$(IntermediateDirectory)/check_lists.cpp$(ObjectSuffix): check_lists.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/check_lists.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/check_lists.cpp$(DependSuffix) -MM check_lists.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/Thompson_CS3305_Lab6/check_lists.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/check_lists.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/check_lists.cpp$(PreprocessSuffix): check_lists.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/check_lists.cpp$(PreprocessSuffix) check_lists.cpp

$(IntermediateDirectory)/bag_diff3.cpp$(ObjectSuffix): bag_diff3.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/bag_diff3.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/bag_diff3.cpp$(DependSuffix) -MM bag_diff3.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/Thompson_CS3305_Lab6/bag_diff3.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/bag_diff3.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/bag_diff3.cpp$(PreprocessSuffix): bag_diff3.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/bag_diff3.cpp$(PreprocessSuffix) bag_diff3.cpp

$(IntermediateDirectory)/bag3.cpp$(ObjectSuffix): bag3.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/bag3.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/bag3.cpp$(DependSuffix) -MM bag3.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/logan/Documents/GitHub/CSE3305_S05_CPP/CSE3305_Workspace/Thompson_CS3305_Lab6/bag3.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/bag3.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/bag3.cpp$(PreprocessSuffix): bag3.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/bag3.cpp$(PreprocessSuffix) bag3.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(ConfigurationName)/


