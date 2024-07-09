################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/ui/src/ui.c \
../code/ui/src/ui_Screen1.c \
../code/ui/src/ui_Screen2.c \
../code/ui/src/ui_comp_hook.c \
../code/ui/src/ui_helpers.c 

COMPILED_SRCS += \
./code/ui/src/ui.src \
./code/ui/src/ui_Screen1.src \
./code/ui/src/ui_Screen2.src \
./code/ui/src/ui_comp_hook.src \
./code/ui/src/ui_helpers.src 

C_DEPS += \
./code/ui/src/ui.d \
./code/ui/src/ui_Screen1.d \
./code/ui/src/ui_Screen2.d \
./code/ui/src/ui_comp_hook.d \
./code/ui/src/ui_helpers.d 

OBJS += \
./code/ui/src/ui.o \
./code/ui/src/ui_Screen1.o \
./code/ui/src/ui_Screen2.o \
./code/ui/src/ui_comp_hook.o \
./code/ui/src/ui_helpers.o 


# Each subdirectory must supply rules for building sources it contributes
code/ui/src/%.src: ../code/ui/src/%.c code/ui/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc26xb "-fF:/smartcar/TC264_Library-master/Seekfree_TC264_Opensource_Library/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc26xb -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/code\/ui\/src\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

code/ui/src/%.o: ./code/ui/src/%.src code/ui/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-code-2f-ui-2f-src

clean-code-2f-ui-2f-src:
	-$(RM) ./code/ui/src/ui.d ./code/ui/src/ui.o ./code/ui/src/ui.src ./code/ui/src/ui_Screen1.d ./code/ui/src/ui_Screen1.o ./code/ui/src/ui_Screen1.src ./code/ui/src/ui_Screen2.d ./code/ui/src/ui_Screen2.o ./code/ui/src/ui_Screen2.src ./code/ui/src/ui_comp_hook.d ./code/ui/src/ui_comp_hook.o ./code/ui/src/ui_comp_hook.src ./code/ui/src/ui_helpers.d ./code/ui/src/ui_helpers.o ./code/ui/src/ui_helpers.src

.PHONY: clean-code-2f-ui-2f-src

