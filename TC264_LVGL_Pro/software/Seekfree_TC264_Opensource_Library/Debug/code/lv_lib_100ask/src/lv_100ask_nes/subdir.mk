################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/lv_lib_100ask/src/lv_100ask_nes/InfoNES.c \
../code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_Mapper.c \
../code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_System.c \
../code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_pAPU.c \
../code/lv_lib_100ask/src/lv_100ask_nes/K6502.c \
../code/lv_lib_100ask/src/lv_100ask_nes/lv_100ask_nes.c 

COMPILED_SRCS += \
./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES.src \
./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_Mapper.src \
./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_System.src \
./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_pAPU.src \
./code/lv_lib_100ask/src/lv_100ask_nes/K6502.src \
./code/lv_lib_100ask/src/lv_100ask_nes/lv_100ask_nes.src 

C_DEPS += \
./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES.d \
./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_Mapper.d \
./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_System.d \
./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_pAPU.d \
./code/lv_lib_100ask/src/lv_100ask_nes/K6502.d \
./code/lv_lib_100ask/src/lv_100ask_nes/lv_100ask_nes.d 

OBJS += \
./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES.o \
./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_Mapper.o \
./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_System.o \
./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_pAPU.o \
./code/lv_lib_100ask/src/lv_100ask_nes/K6502.o \
./code/lv_lib_100ask/src/lv_100ask_nes/lv_100ask_nes.o 


# Each subdirectory must supply rules for building sources it contributes
code/lv_lib_100ask/src/lv_100ask_nes/%.src: ../code/lv_lib_100ask/src/lv_100ask_nes/%.c code/lv_lib_100ask/src/lv_100ask_nes/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc26xb "-fF:/smartcar/TC264_Library-master/Seekfree_TC264_Opensource_Library/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc26xb -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/code\/lv_lib_100ask\/src\/lv_100ask_nes\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

code/lv_lib_100ask/src/lv_100ask_nes/%.o: ./code/lv_lib_100ask/src/lv_100ask_nes/%.src code/lv_lib_100ask/src/lv_100ask_nes/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-code-2f-lv_lib_100ask-2f-src-2f-lv_100ask_nes

clean-code-2f-lv_lib_100ask-2f-src-2f-lv_100ask_nes:
	-$(RM) ./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES.d ./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES.o ./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES.src ./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_Mapper.d ./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_Mapper.o ./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_Mapper.src ./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_System.d ./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_System.o ./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_System.src ./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_pAPU.d ./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_pAPU.o ./code/lv_lib_100ask/src/lv_100ask_nes/InfoNES_pAPU.src ./code/lv_lib_100ask/src/lv_100ask_nes/K6502.d ./code/lv_lib_100ask/src/lv_100ask_nes/K6502.o ./code/lv_lib_100ask/src/lv_100ask_nes/K6502.src ./code/lv_lib_100ask/src/lv_100ask_nes/lv_100ask_nes.d ./code/lv_lib_100ask/src/lv_100ask_nes/lv_100ask_nes.o ./code/lv_lib_100ask/src/lv_100ask_nes/lv_100ask_nes.src

.PHONY: clean-code-2f-lv_lib_100ask-2f-src-2f-lv_100ask_nes

