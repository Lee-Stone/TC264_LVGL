################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_000.c \
../code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_001.c \
../code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_002.c \
../code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_003.c \
../code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_004.c \
../code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_005.c \
../code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_006.c \
../code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_007.c \
../code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_008.c \
../code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_009.c \
../code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_010.c \
../code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_074.c 

COMPILED_SRCS += \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_000.src \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_001.src \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_002.src \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_003.src \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_004.src \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_005.src \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_006.src \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_007.src \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_008.src \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_009.src \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_010.src \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_074.src 

C_DEPS += \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_000.d \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_001.d \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_002.d \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_003.d \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_004.d \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_005.d \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_006.d \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_007.d \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_008.d \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_009.d \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_010.d \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_074.d 

OBJS += \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_000.o \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_001.o \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_002.o \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_003.o \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_004.o \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_005.o \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_006.o \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_007.o \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_008.o \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_009.o \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_010.o \
./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_074.o 


# Each subdirectory must supply rules for building sources it contributes
code/lv_lib_100ask/src/lv_100ask_nes/mapper/%.src: ../code/lv_lib_100ask/src/lv_100ask_nes/mapper/%.c code/lv_lib_100ask/src/lv_100ask_nes/mapper/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc26xb "-fF:/smartcar/TC264_Library-master/Seekfree_TC264_Opensource_Library/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc26xb -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/code\/lv_lib_100ask\/src\/lv_100ask_nes\/mapper\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

code/lv_lib_100ask/src/lv_100ask_nes/mapper/%.o: ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/%.src code/lv_lib_100ask/src/lv_100ask_nes/mapper/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-code-2f-lv_lib_100ask-2f-src-2f-lv_100ask_nes-2f-mapper

clean-code-2f-lv_lib_100ask-2f-src-2f-lv_100ask_nes-2f-mapper:
	-$(RM) ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_000.d ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_000.o ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_000.src ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_001.d ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_001.o ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_001.src ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_002.d ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_002.o ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_002.src ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_003.d ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_003.o ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_003.src ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_004.d ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_004.o ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_004.src ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_005.d ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_005.o ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_005.src ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_006.d ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_006.o ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_006.src ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_007.d ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_007.o ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_007.src ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_008.d ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_008.o ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_008.src ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_009.d ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_009.o ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_009.src ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_010.d ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_010.o ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_010.src ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_074.d ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_074.o ./code/lv_lib_100ask/src/lv_100ask_nes/mapper/InfoNES_Mapper_074.src

.PHONY: clean-code-2f-lv_lib_100ask-2f-src-2f-lv_100ask_nes-2f-mapper

