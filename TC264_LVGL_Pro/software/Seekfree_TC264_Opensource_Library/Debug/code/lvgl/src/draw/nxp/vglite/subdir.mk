################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/lvgl/src/draw/nxp/vglite/lv_draw_vglite.c \
../code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.c \
../code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.c \
../code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.c \
../code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.c \
../code/lvgl/src/draw/nxp/vglite/lv_vglite_buf.c \
../code/lvgl/src/draw/nxp/vglite/lv_vglite_utils.c 

COMPILED_SRCS += \
./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite.src \
./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.src \
./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.src \
./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.src \
./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.src \
./code/lvgl/src/draw/nxp/vglite/lv_vglite_buf.src \
./code/lvgl/src/draw/nxp/vglite/lv_vglite_utils.src 

C_DEPS += \
./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite.d \
./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.d \
./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.d \
./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.d \
./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.d \
./code/lvgl/src/draw/nxp/vglite/lv_vglite_buf.d \
./code/lvgl/src/draw/nxp/vglite/lv_vglite_utils.d 

OBJS += \
./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite.o \
./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.o \
./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.o \
./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.o \
./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.o \
./code/lvgl/src/draw/nxp/vglite/lv_vglite_buf.o \
./code/lvgl/src/draw/nxp/vglite/lv_vglite_utils.o 


# Each subdirectory must supply rules for building sources it contributes
code/lvgl/src/draw/nxp/vglite/%.src: ../code/lvgl/src/draw/nxp/vglite/%.c code/lvgl/src/draw/nxp/vglite/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc26xb "-fF:/smartcar/TC264_Library-master/Seekfree_TC264_Opensource_Library/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc26xb -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/code\/lvgl\/src\/draw\/nxp\/vglite\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

code/lvgl/src/draw/nxp/vglite/%.o: ./code/lvgl/src/draw/nxp/vglite/%.src code/lvgl/src/draw/nxp/vglite/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-code-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite

clean-code-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite:
	-$(RM) ./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite.d ./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite.o ./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite.src ./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.d ./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.o ./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.src ./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.d ./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.o ./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.src ./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.d ./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.o ./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.src ./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.d ./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.o ./code/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.src ./code/lvgl/src/draw/nxp/vglite/lv_vglite_buf.d ./code/lvgl/src/draw/nxp/vglite/lv_vglite_buf.o ./code/lvgl/src/draw/nxp/vglite/lv_vglite_buf.src ./code/lvgl/src/draw/nxp/vglite/lv_vglite_utils.d ./code/lvgl/src/draw/nxp/vglite/lv_vglite_utils.o ./code/lvgl/src/draw/nxp/vglite/lv_vglite_utils.src

.PHONY: clean-code-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite

