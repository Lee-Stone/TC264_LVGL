################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/lvgl/src/draw/sw/lv_draw_sw.c \
../code/lvgl/src/draw/sw/lv_draw_sw_arc.c \
../code/lvgl/src/draw/sw/lv_draw_sw_blend.c \
../code/lvgl/src/draw/sw/lv_draw_sw_dither.c \
../code/lvgl/src/draw/sw/lv_draw_sw_gradient.c \
../code/lvgl/src/draw/sw/lv_draw_sw_img.c \
../code/lvgl/src/draw/sw/lv_draw_sw_layer.c \
../code/lvgl/src/draw/sw/lv_draw_sw_letter.c \
../code/lvgl/src/draw/sw/lv_draw_sw_line.c \
../code/lvgl/src/draw/sw/lv_draw_sw_polygon.c \
../code/lvgl/src/draw/sw/lv_draw_sw_rect.c \
../code/lvgl/src/draw/sw/lv_draw_sw_transform.c 

COMPILED_SRCS += \
./code/lvgl/src/draw/sw/lv_draw_sw.src \
./code/lvgl/src/draw/sw/lv_draw_sw_arc.src \
./code/lvgl/src/draw/sw/lv_draw_sw_blend.src \
./code/lvgl/src/draw/sw/lv_draw_sw_dither.src \
./code/lvgl/src/draw/sw/lv_draw_sw_gradient.src \
./code/lvgl/src/draw/sw/lv_draw_sw_img.src \
./code/lvgl/src/draw/sw/lv_draw_sw_layer.src \
./code/lvgl/src/draw/sw/lv_draw_sw_letter.src \
./code/lvgl/src/draw/sw/lv_draw_sw_line.src \
./code/lvgl/src/draw/sw/lv_draw_sw_polygon.src \
./code/lvgl/src/draw/sw/lv_draw_sw_rect.src \
./code/lvgl/src/draw/sw/lv_draw_sw_transform.src 

C_DEPS += \
./code/lvgl/src/draw/sw/lv_draw_sw.d \
./code/lvgl/src/draw/sw/lv_draw_sw_arc.d \
./code/lvgl/src/draw/sw/lv_draw_sw_blend.d \
./code/lvgl/src/draw/sw/lv_draw_sw_dither.d \
./code/lvgl/src/draw/sw/lv_draw_sw_gradient.d \
./code/lvgl/src/draw/sw/lv_draw_sw_img.d \
./code/lvgl/src/draw/sw/lv_draw_sw_layer.d \
./code/lvgl/src/draw/sw/lv_draw_sw_letter.d \
./code/lvgl/src/draw/sw/lv_draw_sw_line.d \
./code/lvgl/src/draw/sw/lv_draw_sw_polygon.d \
./code/lvgl/src/draw/sw/lv_draw_sw_rect.d \
./code/lvgl/src/draw/sw/lv_draw_sw_transform.d 

OBJS += \
./code/lvgl/src/draw/sw/lv_draw_sw.o \
./code/lvgl/src/draw/sw/lv_draw_sw_arc.o \
./code/lvgl/src/draw/sw/lv_draw_sw_blend.o \
./code/lvgl/src/draw/sw/lv_draw_sw_dither.o \
./code/lvgl/src/draw/sw/lv_draw_sw_gradient.o \
./code/lvgl/src/draw/sw/lv_draw_sw_img.o \
./code/lvgl/src/draw/sw/lv_draw_sw_layer.o \
./code/lvgl/src/draw/sw/lv_draw_sw_letter.o \
./code/lvgl/src/draw/sw/lv_draw_sw_line.o \
./code/lvgl/src/draw/sw/lv_draw_sw_polygon.o \
./code/lvgl/src/draw/sw/lv_draw_sw_rect.o \
./code/lvgl/src/draw/sw/lv_draw_sw_transform.o 


# Each subdirectory must supply rules for building sources it contributes
code/lvgl/src/draw/sw/%.src: ../code/lvgl/src/draw/sw/%.c code/lvgl/src/draw/sw/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc26xb "-fF:/smartcar/TC264_Library-master/Seekfree_TC264_Opensource_Library/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc26xb -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/code\/lvgl\/src\/draw\/sw\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

code/lvgl/src/draw/sw/%.o: ./code/lvgl/src/draw/sw/%.src code/lvgl/src/draw/sw/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-code-2f-lvgl-2f-src-2f-draw-2f-sw

clean-code-2f-lvgl-2f-src-2f-draw-2f-sw:
	-$(RM) ./code/lvgl/src/draw/sw/lv_draw_sw.d ./code/lvgl/src/draw/sw/lv_draw_sw.o ./code/lvgl/src/draw/sw/lv_draw_sw.src ./code/lvgl/src/draw/sw/lv_draw_sw_arc.d ./code/lvgl/src/draw/sw/lv_draw_sw_arc.o ./code/lvgl/src/draw/sw/lv_draw_sw_arc.src ./code/lvgl/src/draw/sw/lv_draw_sw_blend.d ./code/lvgl/src/draw/sw/lv_draw_sw_blend.o ./code/lvgl/src/draw/sw/lv_draw_sw_blend.src ./code/lvgl/src/draw/sw/lv_draw_sw_dither.d ./code/lvgl/src/draw/sw/lv_draw_sw_dither.o ./code/lvgl/src/draw/sw/lv_draw_sw_dither.src ./code/lvgl/src/draw/sw/lv_draw_sw_gradient.d ./code/lvgl/src/draw/sw/lv_draw_sw_gradient.o ./code/lvgl/src/draw/sw/lv_draw_sw_gradient.src ./code/lvgl/src/draw/sw/lv_draw_sw_img.d ./code/lvgl/src/draw/sw/lv_draw_sw_img.o ./code/lvgl/src/draw/sw/lv_draw_sw_img.src ./code/lvgl/src/draw/sw/lv_draw_sw_layer.d ./code/lvgl/src/draw/sw/lv_draw_sw_layer.o ./code/lvgl/src/draw/sw/lv_draw_sw_layer.src ./code/lvgl/src/draw/sw/lv_draw_sw_letter.d ./code/lvgl/src/draw/sw/lv_draw_sw_letter.o ./code/lvgl/src/draw/sw/lv_draw_sw_letter.src ./code/lvgl/src/draw/sw/lv_draw_sw_line.d ./code/lvgl/src/draw/sw/lv_draw_sw_line.o ./code/lvgl/src/draw/sw/lv_draw_sw_line.src ./code/lvgl/src/draw/sw/lv_draw_sw_polygon.d ./code/lvgl/src/draw/sw/lv_draw_sw_polygon.o ./code/lvgl/src/draw/sw/lv_draw_sw_polygon.src ./code/lvgl/src/draw/sw/lv_draw_sw_rect.d ./code/lvgl/src/draw/sw/lv_draw_sw_rect.o ./code/lvgl/src/draw/sw/lv_draw_sw_rect.src ./code/lvgl/src/draw/sw/lv_draw_sw_transform.d ./code/lvgl/src/draw/sw/lv_draw_sw_transform.o ./code/lvgl/src/draw/sw/lv_draw_sw_transform.src

.PHONY: clean-code-2f-lvgl-2f-src-2f-draw-2f-sw

