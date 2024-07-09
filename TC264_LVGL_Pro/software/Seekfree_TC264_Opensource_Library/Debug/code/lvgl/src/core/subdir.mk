################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/lvgl/src/core/lv_disp.c \
../code/lvgl/src/core/lv_event.c \
../code/lvgl/src/core/lv_group.c \
../code/lvgl/src/core/lv_indev.c \
../code/lvgl/src/core/lv_indev_scroll.c \
../code/lvgl/src/core/lv_obj.c \
../code/lvgl/src/core/lv_obj_class.c \
../code/lvgl/src/core/lv_obj_draw.c \
../code/lvgl/src/core/lv_obj_pos.c \
../code/lvgl/src/core/lv_obj_scroll.c \
../code/lvgl/src/core/lv_obj_style.c \
../code/lvgl/src/core/lv_obj_style_gen.c \
../code/lvgl/src/core/lv_obj_tree.c \
../code/lvgl/src/core/lv_refr.c \
../code/lvgl/src/core/lv_theme.c 

COMPILED_SRCS += \
./code/lvgl/src/core/lv_disp.src \
./code/lvgl/src/core/lv_event.src \
./code/lvgl/src/core/lv_group.src \
./code/lvgl/src/core/lv_indev.src \
./code/lvgl/src/core/lv_indev_scroll.src \
./code/lvgl/src/core/lv_obj.src \
./code/lvgl/src/core/lv_obj_class.src \
./code/lvgl/src/core/lv_obj_draw.src \
./code/lvgl/src/core/lv_obj_pos.src \
./code/lvgl/src/core/lv_obj_scroll.src \
./code/lvgl/src/core/lv_obj_style.src \
./code/lvgl/src/core/lv_obj_style_gen.src \
./code/lvgl/src/core/lv_obj_tree.src \
./code/lvgl/src/core/lv_refr.src \
./code/lvgl/src/core/lv_theme.src 

C_DEPS += \
./code/lvgl/src/core/lv_disp.d \
./code/lvgl/src/core/lv_event.d \
./code/lvgl/src/core/lv_group.d \
./code/lvgl/src/core/lv_indev.d \
./code/lvgl/src/core/lv_indev_scroll.d \
./code/lvgl/src/core/lv_obj.d \
./code/lvgl/src/core/lv_obj_class.d \
./code/lvgl/src/core/lv_obj_draw.d \
./code/lvgl/src/core/lv_obj_pos.d \
./code/lvgl/src/core/lv_obj_scroll.d \
./code/lvgl/src/core/lv_obj_style.d \
./code/lvgl/src/core/lv_obj_style_gen.d \
./code/lvgl/src/core/lv_obj_tree.d \
./code/lvgl/src/core/lv_refr.d \
./code/lvgl/src/core/lv_theme.d 

OBJS += \
./code/lvgl/src/core/lv_disp.o \
./code/lvgl/src/core/lv_event.o \
./code/lvgl/src/core/lv_group.o \
./code/lvgl/src/core/lv_indev.o \
./code/lvgl/src/core/lv_indev_scroll.o \
./code/lvgl/src/core/lv_obj.o \
./code/lvgl/src/core/lv_obj_class.o \
./code/lvgl/src/core/lv_obj_draw.o \
./code/lvgl/src/core/lv_obj_pos.o \
./code/lvgl/src/core/lv_obj_scroll.o \
./code/lvgl/src/core/lv_obj_style.o \
./code/lvgl/src/core/lv_obj_style_gen.o \
./code/lvgl/src/core/lv_obj_tree.o \
./code/lvgl/src/core/lv_refr.o \
./code/lvgl/src/core/lv_theme.o 


# Each subdirectory must supply rules for building sources it contributes
code/lvgl/src/core/%.src: ../code/lvgl/src/core/%.c code/lvgl/src/core/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc26xb "-fF:/smartcar/TC264_Library-master/Seekfree_TC264_Opensource_Library/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc26xb -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/code\/lvgl\/src\/core\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

code/lvgl/src/core/%.o: ./code/lvgl/src/core/%.src code/lvgl/src/core/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-code-2f-lvgl-2f-src-2f-core

clean-code-2f-lvgl-2f-src-2f-core:
	-$(RM) ./code/lvgl/src/core/lv_disp.d ./code/lvgl/src/core/lv_disp.o ./code/lvgl/src/core/lv_disp.src ./code/lvgl/src/core/lv_event.d ./code/lvgl/src/core/lv_event.o ./code/lvgl/src/core/lv_event.src ./code/lvgl/src/core/lv_group.d ./code/lvgl/src/core/lv_group.o ./code/lvgl/src/core/lv_group.src ./code/lvgl/src/core/lv_indev.d ./code/lvgl/src/core/lv_indev.o ./code/lvgl/src/core/lv_indev.src ./code/lvgl/src/core/lv_indev_scroll.d ./code/lvgl/src/core/lv_indev_scroll.o ./code/lvgl/src/core/lv_indev_scroll.src ./code/lvgl/src/core/lv_obj.d ./code/lvgl/src/core/lv_obj.o ./code/lvgl/src/core/lv_obj.src ./code/lvgl/src/core/lv_obj_class.d ./code/lvgl/src/core/lv_obj_class.o ./code/lvgl/src/core/lv_obj_class.src ./code/lvgl/src/core/lv_obj_draw.d ./code/lvgl/src/core/lv_obj_draw.o ./code/lvgl/src/core/lv_obj_draw.src ./code/lvgl/src/core/lv_obj_pos.d ./code/lvgl/src/core/lv_obj_pos.o ./code/lvgl/src/core/lv_obj_pos.src ./code/lvgl/src/core/lv_obj_scroll.d ./code/lvgl/src/core/lv_obj_scroll.o ./code/lvgl/src/core/lv_obj_scroll.src ./code/lvgl/src/core/lv_obj_style.d ./code/lvgl/src/core/lv_obj_style.o ./code/lvgl/src/core/lv_obj_style.src ./code/lvgl/src/core/lv_obj_style_gen.d ./code/lvgl/src/core/lv_obj_style_gen.o ./code/lvgl/src/core/lv_obj_style_gen.src ./code/lvgl/src/core/lv_obj_tree.d ./code/lvgl/src/core/lv_obj_tree.o ./code/lvgl/src/core/lv_obj_tree.src ./code/lvgl/src/core/lv_refr.d ./code/lvgl/src/core/lv_refr.o ./code/lvgl/src/core/lv_refr.src ./code/lvgl/src/core/lv_theme.d ./code/lvgl/src/core/lv_theme.o ./code/lvgl/src/core/lv_theme.src

.PHONY: clean-code-2f-lvgl-2f-src-2f-core

