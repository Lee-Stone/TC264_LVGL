################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/lvgl/porting/lv_port_disp.c \
../code/lvgl/porting/lv_port_fs.c \
../code/lvgl/porting/lv_port_indev.c 

COMPILED_SRCS += \
./code/lvgl/porting/lv_port_disp.src \
./code/lvgl/porting/lv_port_fs.src \
./code/lvgl/porting/lv_port_indev.src 

C_DEPS += \
./code/lvgl/porting/lv_port_disp.d \
./code/lvgl/porting/lv_port_fs.d \
./code/lvgl/porting/lv_port_indev.d 

OBJS += \
./code/lvgl/porting/lv_port_disp.o \
./code/lvgl/porting/lv_port_fs.o \
./code/lvgl/porting/lv_port_indev.o 


# Each subdirectory must supply rules for building sources it contributes
code/lvgl/porting/%.src: ../code/lvgl/porting/%.c code/lvgl/porting/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc26xb "-fF:/smartcar/TC264_Library-master/Seekfree_TC264_Opensource_Library/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc26xb -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/code\/lvgl\/porting\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

code/lvgl/porting/%.o: ./code/lvgl/porting/%.src code/lvgl/porting/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-code-2f-lvgl-2f-porting

clean-code-2f-lvgl-2f-porting:
	-$(RM) ./code/lvgl/porting/lv_port_disp.d ./code/lvgl/porting/lv_port_disp.o ./code/lvgl/porting/lv_port_disp.src ./code/lvgl/porting/lv_port_fs.d ./code/lvgl/porting/lv_port_fs.o ./code/lvgl/porting/lv_port_fs.src ./code/lvgl/porting/lv_port_indev.d ./code/lvgl/porting/lv_port_indev.o ./code/lvgl/porting/lv_port_indev.src

.PHONY: clean-code-2f-lvgl-2f-porting

