################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/lvgl/src/draw/sdl/lv_draw_sdl.c \
../code/lvgl/src/draw/sdl/lv_draw_sdl_arc.c \
../code/lvgl/src/draw/sdl/lv_draw_sdl_bg.c \
../code/lvgl/src/draw/sdl/lv_draw_sdl_composite.c \
../code/lvgl/src/draw/sdl/lv_draw_sdl_img.c \
../code/lvgl/src/draw/sdl/lv_draw_sdl_label.c \
../code/lvgl/src/draw/sdl/lv_draw_sdl_layer.c \
../code/lvgl/src/draw/sdl/lv_draw_sdl_line.c \
../code/lvgl/src/draw/sdl/lv_draw_sdl_mask.c \
../code/lvgl/src/draw/sdl/lv_draw_sdl_polygon.c \
../code/lvgl/src/draw/sdl/lv_draw_sdl_rect.c \
../code/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.c \
../code/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.c \
../code/lvgl/src/draw/sdl/lv_draw_sdl_utils.c 

COMPILED_SRCS += \
./code/lvgl/src/draw/sdl/lv_draw_sdl.src \
./code/lvgl/src/draw/sdl/lv_draw_sdl_arc.src \
./code/lvgl/src/draw/sdl/lv_draw_sdl_bg.src \
./code/lvgl/src/draw/sdl/lv_draw_sdl_composite.src \
./code/lvgl/src/draw/sdl/lv_draw_sdl_img.src \
./code/lvgl/src/draw/sdl/lv_draw_sdl_label.src \
./code/lvgl/src/draw/sdl/lv_draw_sdl_layer.src \
./code/lvgl/src/draw/sdl/lv_draw_sdl_line.src \
./code/lvgl/src/draw/sdl/lv_draw_sdl_mask.src \
./code/lvgl/src/draw/sdl/lv_draw_sdl_polygon.src \
./code/lvgl/src/draw/sdl/lv_draw_sdl_rect.src \
./code/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.src \
./code/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.src \
./code/lvgl/src/draw/sdl/lv_draw_sdl_utils.src 

C_DEPS += \
./code/lvgl/src/draw/sdl/lv_draw_sdl.d \
./code/lvgl/src/draw/sdl/lv_draw_sdl_arc.d \
./code/lvgl/src/draw/sdl/lv_draw_sdl_bg.d \
./code/lvgl/src/draw/sdl/lv_draw_sdl_composite.d \
./code/lvgl/src/draw/sdl/lv_draw_sdl_img.d \
./code/lvgl/src/draw/sdl/lv_draw_sdl_label.d \
./code/lvgl/src/draw/sdl/lv_draw_sdl_layer.d \
./code/lvgl/src/draw/sdl/lv_draw_sdl_line.d \
./code/lvgl/src/draw/sdl/lv_draw_sdl_mask.d \
./code/lvgl/src/draw/sdl/lv_draw_sdl_polygon.d \
./code/lvgl/src/draw/sdl/lv_draw_sdl_rect.d \
./code/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.d \
./code/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.d \
./code/lvgl/src/draw/sdl/lv_draw_sdl_utils.d 

OBJS += \
./code/lvgl/src/draw/sdl/lv_draw_sdl.o \
./code/lvgl/src/draw/sdl/lv_draw_sdl_arc.o \
./code/lvgl/src/draw/sdl/lv_draw_sdl_bg.o \
./code/lvgl/src/draw/sdl/lv_draw_sdl_composite.o \
./code/lvgl/src/draw/sdl/lv_draw_sdl_img.o \
./code/lvgl/src/draw/sdl/lv_draw_sdl_label.o \
./code/lvgl/src/draw/sdl/lv_draw_sdl_layer.o \
./code/lvgl/src/draw/sdl/lv_draw_sdl_line.o \
./code/lvgl/src/draw/sdl/lv_draw_sdl_mask.o \
./code/lvgl/src/draw/sdl/lv_draw_sdl_polygon.o \
./code/lvgl/src/draw/sdl/lv_draw_sdl_rect.o \
./code/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.o \
./code/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.o \
./code/lvgl/src/draw/sdl/lv_draw_sdl_utils.o 


# Each subdirectory must supply rules for building sources it contributes
code/lvgl/src/draw/sdl/%.src: ../code/lvgl/src/draw/sdl/%.c code/lvgl/src/draw/sdl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc26xb "-fF:/smartcar/TC264_Library-master/Seekfree_TC264_Opensource_Library/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc26xb -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/code\/lvgl\/src\/draw\/sdl\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

code/lvgl/src/draw/sdl/%.o: ./code/lvgl/src/draw/sdl/%.src code/lvgl/src/draw/sdl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-code-2f-lvgl-2f-src-2f-draw-2f-sdl

clean-code-2f-lvgl-2f-src-2f-draw-2f-sdl:
	-$(RM) ./code/lvgl/src/draw/sdl/lv_draw_sdl.d ./code/lvgl/src/draw/sdl/lv_draw_sdl.o ./code/lvgl/src/draw/sdl/lv_draw_sdl.src ./code/lvgl/src/draw/sdl/lv_draw_sdl_arc.d ./code/lvgl/src/draw/sdl/lv_draw_sdl_arc.o ./code/lvgl/src/draw/sdl/lv_draw_sdl_arc.src ./code/lvgl/src/draw/sdl/lv_draw_sdl_bg.d ./code/lvgl/src/draw/sdl/lv_draw_sdl_bg.o ./code/lvgl/src/draw/sdl/lv_draw_sdl_bg.src ./code/lvgl/src/draw/sdl/lv_draw_sdl_composite.d ./code/lvgl/src/draw/sdl/lv_draw_sdl_composite.o ./code/lvgl/src/draw/sdl/lv_draw_sdl_composite.src ./code/lvgl/src/draw/sdl/lv_draw_sdl_img.d ./code/lvgl/src/draw/sdl/lv_draw_sdl_img.o ./code/lvgl/src/draw/sdl/lv_draw_sdl_img.src ./code/lvgl/src/draw/sdl/lv_draw_sdl_label.d ./code/lvgl/src/draw/sdl/lv_draw_sdl_label.o ./code/lvgl/src/draw/sdl/lv_draw_sdl_label.src ./code/lvgl/src/draw/sdl/lv_draw_sdl_layer.d ./code/lvgl/src/draw/sdl/lv_draw_sdl_layer.o ./code/lvgl/src/draw/sdl/lv_draw_sdl_layer.src ./code/lvgl/src/draw/sdl/lv_draw_sdl_line.d ./code/lvgl/src/draw/sdl/lv_draw_sdl_line.o ./code/lvgl/src/draw/sdl/lv_draw_sdl_line.src ./code/lvgl/src/draw/sdl/lv_draw_sdl_mask.d ./code/lvgl/src/draw/sdl/lv_draw_sdl_mask.o ./code/lvgl/src/draw/sdl/lv_draw_sdl_mask.src ./code/lvgl/src/draw/sdl/lv_draw_sdl_polygon.d ./code/lvgl/src/draw/sdl/lv_draw_sdl_polygon.o ./code/lvgl/src/draw/sdl/lv_draw_sdl_polygon.src ./code/lvgl/src/draw/sdl/lv_draw_sdl_rect.d ./code/lvgl/src/draw/sdl/lv_draw_sdl_rect.o ./code/lvgl/src/draw/sdl/lv_draw_sdl_rect.src ./code/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.d ./code/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.o ./code/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.src ./code/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.d ./code/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.o ./code/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.src ./code/lvgl/src/draw/sdl/lv_draw_sdl_utils.d ./code/lvgl/src/draw/sdl/lv_draw_sdl_utils.o ./code/lvgl/src/draw/sdl/lv_draw_sdl_utils.src

.PHONY: clean-code-2f-lvgl-2f-src-2f-draw-2f-sdl

