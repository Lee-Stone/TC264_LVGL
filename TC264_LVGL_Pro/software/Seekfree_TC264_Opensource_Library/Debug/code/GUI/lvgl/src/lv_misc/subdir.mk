################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/GUI/lvgl/src/lv_misc/lv_anim.c \
../code/GUI/lvgl/src/lv_misc/lv_area.c \
../code/GUI/lvgl/src/lv_misc/lv_async.c \
../code/GUI/lvgl/src/lv_misc/lv_bidi.c \
../code/GUI/lvgl/src/lv_misc/lv_color.c \
../code/GUI/lvgl/src/lv_misc/lv_debug.c \
../code/GUI/lvgl/src/lv_misc/lv_fs.c \
../code/GUI/lvgl/src/lv_misc/lv_gc.c \
../code/GUI/lvgl/src/lv_misc/lv_ll.c \
../code/GUI/lvgl/src/lv_misc/lv_log.c \
../code/GUI/lvgl/src/lv_misc/lv_math.c \
../code/GUI/lvgl/src/lv_misc/lv_mem.c \
../code/GUI/lvgl/src/lv_misc/lv_printf.c \
../code/GUI/lvgl/src/lv_misc/lv_task.c \
../code/GUI/lvgl/src/lv_misc/lv_templ.c \
../code/GUI/lvgl/src/lv_misc/lv_txt.c \
../code/GUI/lvgl/src/lv_misc/lv_txt_ap.c \
../code/GUI/lvgl/src/lv_misc/lv_utils.c 

COMPILED_SRCS += \
./code/GUI/lvgl/src/lv_misc/lv_anim.src \
./code/GUI/lvgl/src/lv_misc/lv_area.src \
./code/GUI/lvgl/src/lv_misc/lv_async.src \
./code/GUI/lvgl/src/lv_misc/lv_bidi.src \
./code/GUI/lvgl/src/lv_misc/lv_color.src \
./code/GUI/lvgl/src/lv_misc/lv_debug.src \
./code/GUI/lvgl/src/lv_misc/lv_fs.src \
./code/GUI/lvgl/src/lv_misc/lv_gc.src \
./code/GUI/lvgl/src/lv_misc/lv_ll.src \
./code/GUI/lvgl/src/lv_misc/lv_log.src \
./code/GUI/lvgl/src/lv_misc/lv_math.src \
./code/GUI/lvgl/src/lv_misc/lv_mem.src \
./code/GUI/lvgl/src/lv_misc/lv_printf.src \
./code/GUI/lvgl/src/lv_misc/lv_task.src \
./code/GUI/lvgl/src/lv_misc/lv_templ.src \
./code/GUI/lvgl/src/lv_misc/lv_txt.src \
./code/GUI/lvgl/src/lv_misc/lv_txt_ap.src \
./code/GUI/lvgl/src/lv_misc/lv_utils.src 

C_DEPS += \
./code/GUI/lvgl/src/lv_misc/lv_anim.d \
./code/GUI/lvgl/src/lv_misc/lv_area.d \
./code/GUI/lvgl/src/lv_misc/lv_async.d \
./code/GUI/lvgl/src/lv_misc/lv_bidi.d \
./code/GUI/lvgl/src/lv_misc/lv_color.d \
./code/GUI/lvgl/src/lv_misc/lv_debug.d \
./code/GUI/lvgl/src/lv_misc/lv_fs.d \
./code/GUI/lvgl/src/lv_misc/lv_gc.d \
./code/GUI/lvgl/src/lv_misc/lv_ll.d \
./code/GUI/lvgl/src/lv_misc/lv_log.d \
./code/GUI/lvgl/src/lv_misc/lv_math.d \
./code/GUI/lvgl/src/lv_misc/lv_mem.d \
./code/GUI/lvgl/src/lv_misc/lv_printf.d \
./code/GUI/lvgl/src/lv_misc/lv_task.d \
./code/GUI/lvgl/src/lv_misc/lv_templ.d \
./code/GUI/lvgl/src/lv_misc/lv_txt.d \
./code/GUI/lvgl/src/lv_misc/lv_txt_ap.d \
./code/GUI/lvgl/src/lv_misc/lv_utils.d 

OBJS += \
./code/GUI/lvgl/src/lv_misc/lv_anim.o \
./code/GUI/lvgl/src/lv_misc/lv_area.o \
./code/GUI/lvgl/src/lv_misc/lv_async.o \
./code/GUI/lvgl/src/lv_misc/lv_bidi.o \
./code/GUI/lvgl/src/lv_misc/lv_color.o \
./code/GUI/lvgl/src/lv_misc/lv_debug.o \
./code/GUI/lvgl/src/lv_misc/lv_fs.o \
./code/GUI/lvgl/src/lv_misc/lv_gc.o \
./code/GUI/lvgl/src/lv_misc/lv_ll.o \
./code/GUI/lvgl/src/lv_misc/lv_log.o \
./code/GUI/lvgl/src/lv_misc/lv_math.o \
./code/GUI/lvgl/src/lv_misc/lv_mem.o \
./code/GUI/lvgl/src/lv_misc/lv_printf.o \
./code/GUI/lvgl/src/lv_misc/lv_task.o \
./code/GUI/lvgl/src/lv_misc/lv_templ.o \
./code/GUI/lvgl/src/lv_misc/lv_txt.o \
./code/GUI/lvgl/src/lv_misc/lv_txt_ap.o \
./code/GUI/lvgl/src/lv_misc/lv_utils.o 


# Each subdirectory must supply rules for building sources it contributes
code/GUI/lvgl/src/lv_misc/%.src: ../code/GUI/lvgl/src/lv_misc/%.c code/GUI/lvgl/src/lv_misc/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc26xb "-fF:/smartcar/TC264_Library-master/Seekfree_TC264_Opensource_Library/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc26xb -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/code\/GUI\/lvgl\/src\/lv_misc\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

code/GUI/lvgl/src/lv_misc/%.o: ./code/GUI/lvgl/src/lv_misc/%.src code/GUI/lvgl/src/lv_misc/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-code-2f-GUI-2f-lvgl-2f-src-2f-lv_misc

clean-code-2f-GUI-2f-lvgl-2f-src-2f-lv_misc:
	-$(RM) ./code/GUI/lvgl/src/lv_misc/lv_anim.d ./code/GUI/lvgl/src/lv_misc/lv_anim.o ./code/GUI/lvgl/src/lv_misc/lv_anim.src ./code/GUI/lvgl/src/lv_misc/lv_area.d ./code/GUI/lvgl/src/lv_misc/lv_area.o ./code/GUI/lvgl/src/lv_misc/lv_area.src ./code/GUI/lvgl/src/lv_misc/lv_async.d ./code/GUI/lvgl/src/lv_misc/lv_async.o ./code/GUI/lvgl/src/lv_misc/lv_async.src ./code/GUI/lvgl/src/lv_misc/lv_bidi.d ./code/GUI/lvgl/src/lv_misc/lv_bidi.o ./code/GUI/lvgl/src/lv_misc/lv_bidi.src ./code/GUI/lvgl/src/lv_misc/lv_color.d ./code/GUI/lvgl/src/lv_misc/lv_color.o ./code/GUI/lvgl/src/lv_misc/lv_color.src ./code/GUI/lvgl/src/lv_misc/lv_debug.d ./code/GUI/lvgl/src/lv_misc/lv_debug.o ./code/GUI/lvgl/src/lv_misc/lv_debug.src ./code/GUI/lvgl/src/lv_misc/lv_fs.d ./code/GUI/lvgl/src/lv_misc/lv_fs.o ./code/GUI/lvgl/src/lv_misc/lv_fs.src ./code/GUI/lvgl/src/lv_misc/lv_gc.d ./code/GUI/lvgl/src/lv_misc/lv_gc.o ./code/GUI/lvgl/src/lv_misc/lv_gc.src ./code/GUI/lvgl/src/lv_misc/lv_ll.d ./code/GUI/lvgl/src/lv_misc/lv_ll.o ./code/GUI/lvgl/src/lv_misc/lv_ll.src ./code/GUI/lvgl/src/lv_misc/lv_log.d ./code/GUI/lvgl/src/lv_misc/lv_log.o ./code/GUI/lvgl/src/lv_misc/lv_log.src ./code/GUI/lvgl/src/lv_misc/lv_math.d ./code/GUI/lvgl/src/lv_misc/lv_math.o ./code/GUI/lvgl/src/lv_misc/lv_math.src ./code/GUI/lvgl/src/lv_misc/lv_mem.d ./code/GUI/lvgl/src/lv_misc/lv_mem.o ./code/GUI/lvgl/src/lv_misc/lv_mem.src ./code/GUI/lvgl/src/lv_misc/lv_printf.d ./code/GUI/lvgl/src/lv_misc/lv_printf.o ./code/GUI/lvgl/src/lv_misc/lv_printf.src ./code/GUI/lvgl/src/lv_misc/lv_task.d ./code/GUI/lvgl/src/lv_misc/lv_task.o ./code/GUI/lvgl/src/lv_misc/lv_task.src ./code/GUI/lvgl/src/lv_misc/lv_templ.d ./code/GUI/lvgl/src/lv_misc/lv_templ.o ./code/GUI/lvgl/src/lv_misc/lv_templ.src ./code/GUI/lvgl/src/lv_misc/lv_txt.d ./code/GUI/lvgl/src/lv_misc/lv_txt.o ./code/GUI/lvgl/src/lv_misc/lv_txt.src ./code/GUI/lvgl/src/lv_misc/lv_txt_ap.d ./code/GUI/lvgl/src/lv_misc/lv_txt_ap.o ./code/GUI/lvgl/src/lv_misc/lv_txt_ap.src ./code/GUI/lvgl/src/lv_misc/lv_utils.d ./code/GUI/lvgl/src/lv_misc/lv_utils.o ./code/GUI/lvgl/src/lv_misc/lv_utils.src

.PHONY: clean-code-2f-GUI-2f-lvgl-2f-src-2f-lv_misc

