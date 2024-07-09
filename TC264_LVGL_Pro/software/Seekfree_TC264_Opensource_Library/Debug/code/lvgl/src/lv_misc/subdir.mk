################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/lvgl/src/lv_misc/lv_anim.c \
../code/lvgl/src/lv_misc/lv_area.c \
../code/lvgl/src/lv_misc/lv_async.c \
../code/lvgl/src/lv_misc/lv_bidi.c \
../code/lvgl/src/lv_misc/lv_color.c \
../code/lvgl/src/lv_misc/lv_debug.c \
../code/lvgl/src/lv_misc/lv_fs.c \
../code/lvgl/src/lv_misc/lv_gc.c \
../code/lvgl/src/lv_misc/lv_ll.c \
../code/lvgl/src/lv_misc/lv_log.c \
../code/lvgl/src/lv_misc/lv_math.c \
../code/lvgl/src/lv_misc/lv_mem.c \
../code/lvgl/src/lv_misc/lv_printf.c \
../code/lvgl/src/lv_misc/lv_task.c \
../code/lvgl/src/lv_misc/lv_templ.c \
../code/lvgl/src/lv_misc/lv_txt.c \
../code/lvgl/src/lv_misc/lv_txt_ap.c \
../code/lvgl/src/lv_misc/lv_utils.c 

COMPILED_SRCS += \
./code/lvgl/src/lv_misc/lv_anim.src \
./code/lvgl/src/lv_misc/lv_area.src \
./code/lvgl/src/lv_misc/lv_async.src \
./code/lvgl/src/lv_misc/lv_bidi.src \
./code/lvgl/src/lv_misc/lv_color.src \
./code/lvgl/src/lv_misc/lv_debug.src \
./code/lvgl/src/lv_misc/lv_fs.src \
./code/lvgl/src/lv_misc/lv_gc.src \
./code/lvgl/src/lv_misc/lv_ll.src \
./code/lvgl/src/lv_misc/lv_log.src \
./code/lvgl/src/lv_misc/lv_math.src \
./code/lvgl/src/lv_misc/lv_mem.src \
./code/lvgl/src/lv_misc/lv_printf.src \
./code/lvgl/src/lv_misc/lv_task.src \
./code/lvgl/src/lv_misc/lv_templ.src \
./code/lvgl/src/lv_misc/lv_txt.src \
./code/lvgl/src/lv_misc/lv_txt_ap.src \
./code/lvgl/src/lv_misc/lv_utils.src 

C_DEPS += \
./code/lvgl/src/lv_misc/lv_anim.d \
./code/lvgl/src/lv_misc/lv_area.d \
./code/lvgl/src/lv_misc/lv_async.d \
./code/lvgl/src/lv_misc/lv_bidi.d \
./code/lvgl/src/lv_misc/lv_color.d \
./code/lvgl/src/lv_misc/lv_debug.d \
./code/lvgl/src/lv_misc/lv_fs.d \
./code/lvgl/src/lv_misc/lv_gc.d \
./code/lvgl/src/lv_misc/lv_ll.d \
./code/lvgl/src/lv_misc/lv_log.d \
./code/lvgl/src/lv_misc/lv_math.d \
./code/lvgl/src/lv_misc/lv_mem.d \
./code/lvgl/src/lv_misc/lv_printf.d \
./code/lvgl/src/lv_misc/lv_task.d \
./code/lvgl/src/lv_misc/lv_templ.d \
./code/lvgl/src/lv_misc/lv_txt.d \
./code/lvgl/src/lv_misc/lv_txt_ap.d \
./code/lvgl/src/lv_misc/lv_utils.d 

OBJS += \
./code/lvgl/src/lv_misc/lv_anim.o \
./code/lvgl/src/lv_misc/lv_area.o \
./code/lvgl/src/lv_misc/lv_async.o \
./code/lvgl/src/lv_misc/lv_bidi.o \
./code/lvgl/src/lv_misc/lv_color.o \
./code/lvgl/src/lv_misc/lv_debug.o \
./code/lvgl/src/lv_misc/lv_fs.o \
./code/lvgl/src/lv_misc/lv_gc.o \
./code/lvgl/src/lv_misc/lv_ll.o \
./code/lvgl/src/lv_misc/lv_log.o \
./code/lvgl/src/lv_misc/lv_math.o \
./code/lvgl/src/lv_misc/lv_mem.o \
./code/lvgl/src/lv_misc/lv_printf.o \
./code/lvgl/src/lv_misc/lv_task.o \
./code/lvgl/src/lv_misc/lv_templ.o \
./code/lvgl/src/lv_misc/lv_txt.o \
./code/lvgl/src/lv_misc/lv_txt_ap.o \
./code/lvgl/src/lv_misc/lv_utils.o 


# Each subdirectory must supply rules for building sources it contributes
code/lvgl/src/lv_misc/%.src: ../code/lvgl/src/lv_misc/%.c code/lvgl/src/lv_misc/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc26xb "-fF:/smartcar/TC264_Library-master/Seekfree_TC264_Opensource_Library/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc26xb -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/code\/lvgl\/src\/lv_misc\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

code/lvgl/src/lv_misc/%.o: ./code/lvgl/src/lv_misc/%.src code/lvgl/src/lv_misc/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-code-2f-lvgl-2f-src-2f-lv_misc

clean-code-2f-lvgl-2f-src-2f-lv_misc:
	-$(RM) ./code/lvgl/src/lv_misc/lv_anim.d ./code/lvgl/src/lv_misc/lv_anim.o ./code/lvgl/src/lv_misc/lv_anim.src ./code/lvgl/src/lv_misc/lv_area.d ./code/lvgl/src/lv_misc/lv_area.o ./code/lvgl/src/lv_misc/lv_area.src ./code/lvgl/src/lv_misc/lv_async.d ./code/lvgl/src/lv_misc/lv_async.o ./code/lvgl/src/lv_misc/lv_async.src ./code/lvgl/src/lv_misc/lv_bidi.d ./code/lvgl/src/lv_misc/lv_bidi.o ./code/lvgl/src/lv_misc/lv_bidi.src ./code/lvgl/src/lv_misc/lv_color.d ./code/lvgl/src/lv_misc/lv_color.o ./code/lvgl/src/lv_misc/lv_color.src ./code/lvgl/src/lv_misc/lv_debug.d ./code/lvgl/src/lv_misc/lv_debug.o ./code/lvgl/src/lv_misc/lv_debug.src ./code/lvgl/src/lv_misc/lv_fs.d ./code/lvgl/src/lv_misc/lv_fs.o ./code/lvgl/src/lv_misc/lv_fs.src ./code/lvgl/src/lv_misc/lv_gc.d ./code/lvgl/src/lv_misc/lv_gc.o ./code/lvgl/src/lv_misc/lv_gc.src ./code/lvgl/src/lv_misc/lv_ll.d ./code/lvgl/src/lv_misc/lv_ll.o ./code/lvgl/src/lv_misc/lv_ll.src ./code/lvgl/src/lv_misc/lv_log.d ./code/lvgl/src/lv_misc/lv_log.o ./code/lvgl/src/lv_misc/lv_log.src ./code/lvgl/src/lv_misc/lv_math.d ./code/lvgl/src/lv_misc/lv_math.o ./code/lvgl/src/lv_misc/lv_math.src ./code/lvgl/src/lv_misc/lv_mem.d ./code/lvgl/src/lv_misc/lv_mem.o ./code/lvgl/src/lv_misc/lv_mem.src ./code/lvgl/src/lv_misc/lv_printf.d ./code/lvgl/src/lv_misc/lv_printf.o ./code/lvgl/src/lv_misc/lv_printf.src ./code/lvgl/src/lv_misc/lv_task.d ./code/lvgl/src/lv_misc/lv_task.o ./code/lvgl/src/lv_misc/lv_task.src ./code/lvgl/src/lv_misc/lv_templ.d ./code/lvgl/src/lv_misc/lv_templ.o ./code/lvgl/src/lv_misc/lv_templ.src ./code/lvgl/src/lv_misc/lv_txt.d ./code/lvgl/src/lv_misc/lv_txt.o ./code/lvgl/src/lv_misc/lv_txt.src ./code/lvgl/src/lv_misc/lv_txt_ap.d ./code/lvgl/src/lv_misc/lv_txt_ap.o ./code/lvgl/src/lv_misc/lv_txt_ap.src ./code/lvgl/src/lv_misc/lv_utils.d ./code/lvgl/src/lv_misc/lv_utils.o ./code/lvgl/src/lv_misc/lv_utils.src

.PHONY: clean-code-2f-lvgl-2f-src-2f-lv_misc

