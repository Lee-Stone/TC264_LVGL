################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/lvgl/src/lv_themes/lv_theme.c \
../code/lvgl/src/lv_themes/lv_theme_empty.c \
../code/lvgl/src/lv_themes/lv_theme_material.c \
../code/lvgl/src/lv_themes/lv_theme_mono.c \
../code/lvgl/src/lv_themes/lv_theme_template.c 

COMPILED_SRCS += \
./code/lvgl/src/lv_themes/lv_theme.src \
./code/lvgl/src/lv_themes/lv_theme_empty.src \
./code/lvgl/src/lv_themes/lv_theme_material.src \
./code/lvgl/src/lv_themes/lv_theme_mono.src \
./code/lvgl/src/lv_themes/lv_theme_template.src 

C_DEPS += \
./code/lvgl/src/lv_themes/lv_theme.d \
./code/lvgl/src/lv_themes/lv_theme_empty.d \
./code/lvgl/src/lv_themes/lv_theme_material.d \
./code/lvgl/src/lv_themes/lv_theme_mono.d \
./code/lvgl/src/lv_themes/lv_theme_template.d 

OBJS += \
./code/lvgl/src/lv_themes/lv_theme.o \
./code/lvgl/src/lv_themes/lv_theme_empty.o \
./code/lvgl/src/lv_themes/lv_theme_material.o \
./code/lvgl/src/lv_themes/lv_theme_mono.o \
./code/lvgl/src/lv_themes/lv_theme_template.o 


# Each subdirectory must supply rules for building sources it contributes
code/lvgl/src/lv_themes/%.src: ../code/lvgl/src/lv_themes/%.c code/lvgl/src/lv_themes/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc26xb "-fF:/smartcar/TC264_Library-master/Seekfree_TC264_Opensource_Library/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc26xb -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/code\/lvgl\/src\/lv_themes\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

code/lvgl/src/lv_themes/%.o: ./code/lvgl/src/lv_themes/%.src code/lvgl/src/lv_themes/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-code-2f-lvgl-2f-src-2f-lv_themes

clean-code-2f-lvgl-2f-src-2f-lv_themes:
	-$(RM) ./code/lvgl/src/lv_themes/lv_theme.d ./code/lvgl/src/lv_themes/lv_theme.o ./code/lvgl/src/lv_themes/lv_theme.src ./code/lvgl/src/lv_themes/lv_theme_empty.d ./code/lvgl/src/lv_themes/lv_theme_empty.o ./code/lvgl/src/lv_themes/lv_theme_empty.src ./code/lvgl/src/lv_themes/lv_theme_material.d ./code/lvgl/src/lv_themes/lv_theme_material.o ./code/lvgl/src/lv_themes/lv_theme_material.src ./code/lvgl/src/lv_themes/lv_theme_mono.d ./code/lvgl/src/lv_themes/lv_theme_mono.o ./code/lvgl/src/lv_themes/lv_theme_mono.src ./code/lvgl/src/lv_themes/lv_theme_template.d ./code/lvgl/src/lv_themes/lv_theme_template.o ./code/lvgl/src/lv_themes/lv_theme_template.src

.PHONY: clean-code-2f-lvgl-2f-src-2f-lv_themes

