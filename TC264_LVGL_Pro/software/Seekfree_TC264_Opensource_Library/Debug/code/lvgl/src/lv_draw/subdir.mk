################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/lvgl/src/lv_draw/lv_draw_arc.c \
../code/lvgl/src/lv_draw/lv_draw_blend.c \
../code/lvgl/src/lv_draw/lv_draw_img.c \
../code/lvgl/src/lv_draw/lv_draw_label.c \
../code/lvgl/src/lv_draw/lv_draw_line.c \
../code/lvgl/src/lv_draw/lv_draw_mask.c \
../code/lvgl/src/lv_draw/lv_draw_rect.c \
../code/lvgl/src/lv_draw/lv_draw_triangle.c \
../code/lvgl/src/lv_draw/lv_img_buf.c \
../code/lvgl/src/lv_draw/lv_img_cache.c \
../code/lvgl/src/lv_draw/lv_img_decoder.c 

COMPILED_SRCS += \
./code/lvgl/src/lv_draw/lv_draw_arc.src \
./code/lvgl/src/lv_draw/lv_draw_blend.src \
./code/lvgl/src/lv_draw/lv_draw_img.src \
./code/lvgl/src/lv_draw/lv_draw_label.src \
./code/lvgl/src/lv_draw/lv_draw_line.src \
./code/lvgl/src/lv_draw/lv_draw_mask.src \
./code/lvgl/src/lv_draw/lv_draw_rect.src \
./code/lvgl/src/lv_draw/lv_draw_triangle.src \
./code/lvgl/src/lv_draw/lv_img_buf.src \
./code/lvgl/src/lv_draw/lv_img_cache.src \
./code/lvgl/src/lv_draw/lv_img_decoder.src 

C_DEPS += \
./code/lvgl/src/lv_draw/lv_draw_arc.d \
./code/lvgl/src/lv_draw/lv_draw_blend.d \
./code/lvgl/src/lv_draw/lv_draw_img.d \
./code/lvgl/src/lv_draw/lv_draw_label.d \
./code/lvgl/src/lv_draw/lv_draw_line.d \
./code/lvgl/src/lv_draw/lv_draw_mask.d \
./code/lvgl/src/lv_draw/lv_draw_rect.d \
./code/lvgl/src/lv_draw/lv_draw_triangle.d \
./code/lvgl/src/lv_draw/lv_img_buf.d \
./code/lvgl/src/lv_draw/lv_img_cache.d \
./code/lvgl/src/lv_draw/lv_img_decoder.d 

OBJS += \
./code/lvgl/src/lv_draw/lv_draw_arc.o \
./code/lvgl/src/lv_draw/lv_draw_blend.o \
./code/lvgl/src/lv_draw/lv_draw_img.o \
./code/lvgl/src/lv_draw/lv_draw_label.o \
./code/lvgl/src/lv_draw/lv_draw_line.o \
./code/lvgl/src/lv_draw/lv_draw_mask.o \
./code/lvgl/src/lv_draw/lv_draw_rect.o \
./code/lvgl/src/lv_draw/lv_draw_triangle.o \
./code/lvgl/src/lv_draw/lv_img_buf.o \
./code/lvgl/src/lv_draw/lv_img_cache.o \
./code/lvgl/src/lv_draw/lv_img_decoder.o 


# Each subdirectory must supply rules for building sources it contributes
code/lvgl/src/lv_draw/%.src: ../code/lvgl/src/lv_draw/%.c code/lvgl/src/lv_draw/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc26xb "-fF:/smartcar/TC264_Library-master/Seekfree_TC264_Opensource_Library/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc26xb -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/code\/lvgl\/src\/lv_draw\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

code/lvgl/src/lv_draw/%.o: ./code/lvgl/src/lv_draw/%.src code/lvgl/src/lv_draw/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-code-2f-lvgl-2f-src-2f-lv_draw

clean-code-2f-lvgl-2f-src-2f-lv_draw:
	-$(RM) ./code/lvgl/src/lv_draw/lv_draw_arc.d ./code/lvgl/src/lv_draw/lv_draw_arc.o ./code/lvgl/src/lv_draw/lv_draw_arc.src ./code/lvgl/src/lv_draw/lv_draw_blend.d ./code/lvgl/src/lv_draw/lv_draw_blend.o ./code/lvgl/src/lv_draw/lv_draw_blend.src ./code/lvgl/src/lv_draw/lv_draw_img.d ./code/lvgl/src/lv_draw/lv_draw_img.o ./code/lvgl/src/lv_draw/lv_draw_img.src ./code/lvgl/src/lv_draw/lv_draw_label.d ./code/lvgl/src/lv_draw/lv_draw_label.o ./code/lvgl/src/lv_draw/lv_draw_label.src ./code/lvgl/src/lv_draw/lv_draw_line.d ./code/lvgl/src/lv_draw/lv_draw_line.o ./code/lvgl/src/lv_draw/lv_draw_line.src ./code/lvgl/src/lv_draw/lv_draw_mask.d ./code/lvgl/src/lv_draw/lv_draw_mask.o ./code/lvgl/src/lv_draw/lv_draw_mask.src ./code/lvgl/src/lv_draw/lv_draw_rect.d ./code/lvgl/src/lv_draw/lv_draw_rect.o ./code/lvgl/src/lv_draw/lv_draw_rect.src ./code/lvgl/src/lv_draw/lv_draw_triangle.d ./code/lvgl/src/lv_draw/lv_draw_triangle.o ./code/lvgl/src/lv_draw/lv_draw_triangle.src ./code/lvgl/src/lv_draw/lv_img_buf.d ./code/lvgl/src/lv_draw/lv_img_buf.o ./code/lvgl/src/lv_draw/lv_img_buf.src ./code/lvgl/src/lv_draw/lv_img_cache.d ./code/lvgl/src/lv_draw/lv_img_cache.o ./code/lvgl/src/lv_draw/lv_img_cache.src ./code/lvgl/src/lv_draw/lv_img_decoder.d ./code/lvgl/src/lv_draw/lv_img_decoder.o ./code/lvgl/src/lv_draw/lv_img_decoder.src

.PHONY: clean-code-2f-lvgl-2f-src-2f-lv_draw

