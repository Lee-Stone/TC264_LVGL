################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/lvgl/src/widgets/lv_arc.c \
../code/lvgl/src/widgets/lv_bar.c \
../code/lvgl/src/widgets/lv_btn.c \
../code/lvgl/src/widgets/lv_btnmatrix.c \
../code/lvgl/src/widgets/lv_canvas.c \
../code/lvgl/src/widgets/lv_checkbox.c \
../code/lvgl/src/widgets/lv_dropdown.c \
../code/lvgl/src/widgets/lv_img.c \
../code/lvgl/src/widgets/lv_label.c \
../code/lvgl/src/widgets/lv_line.c \
../code/lvgl/src/widgets/lv_objx_templ.c \
../code/lvgl/src/widgets/lv_roller.c \
../code/lvgl/src/widgets/lv_slider.c \
../code/lvgl/src/widgets/lv_switch.c \
../code/lvgl/src/widgets/lv_table.c \
../code/lvgl/src/widgets/lv_textarea.c 

COMPILED_SRCS += \
./code/lvgl/src/widgets/lv_arc.src \
./code/lvgl/src/widgets/lv_bar.src \
./code/lvgl/src/widgets/lv_btn.src \
./code/lvgl/src/widgets/lv_btnmatrix.src \
./code/lvgl/src/widgets/lv_canvas.src \
./code/lvgl/src/widgets/lv_checkbox.src \
./code/lvgl/src/widgets/lv_dropdown.src \
./code/lvgl/src/widgets/lv_img.src \
./code/lvgl/src/widgets/lv_label.src \
./code/lvgl/src/widgets/lv_line.src \
./code/lvgl/src/widgets/lv_objx_templ.src \
./code/lvgl/src/widgets/lv_roller.src \
./code/lvgl/src/widgets/lv_slider.src \
./code/lvgl/src/widgets/lv_switch.src \
./code/lvgl/src/widgets/lv_table.src \
./code/lvgl/src/widgets/lv_textarea.src 

C_DEPS += \
./code/lvgl/src/widgets/lv_arc.d \
./code/lvgl/src/widgets/lv_bar.d \
./code/lvgl/src/widgets/lv_btn.d \
./code/lvgl/src/widgets/lv_btnmatrix.d \
./code/lvgl/src/widgets/lv_canvas.d \
./code/lvgl/src/widgets/lv_checkbox.d \
./code/lvgl/src/widgets/lv_dropdown.d \
./code/lvgl/src/widgets/lv_img.d \
./code/lvgl/src/widgets/lv_label.d \
./code/lvgl/src/widgets/lv_line.d \
./code/lvgl/src/widgets/lv_objx_templ.d \
./code/lvgl/src/widgets/lv_roller.d \
./code/lvgl/src/widgets/lv_slider.d \
./code/lvgl/src/widgets/lv_switch.d \
./code/lvgl/src/widgets/lv_table.d \
./code/lvgl/src/widgets/lv_textarea.d 

OBJS += \
./code/lvgl/src/widgets/lv_arc.o \
./code/lvgl/src/widgets/lv_bar.o \
./code/lvgl/src/widgets/lv_btn.o \
./code/lvgl/src/widgets/lv_btnmatrix.o \
./code/lvgl/src/widgets/lv_canvas.o \
./code/lvgl/src/widgets/lv_checkbox.o \
./code/lvgl/src/widgets/lv_dropdown.o \
./code/lvgl/src/widgets/lv_img.o \
./code/lvgl/src/widgets/lv_label.o \
./code/lvgl/src/widgets/lv_line.o \
./code/lvgl/src/widgets/lv_objx_templ.o \
./code/lvgl/src/widgets/lv_roller.o \
./code/lvgl/src/widgets/lv_slider.o \
./code/lvgl/src/widgets/lv_switch.o \
./code/lvgl/src/widgets/lv_table.o \
./code/lvgl/src/widgets/lv_textarea.o 


# Each subdirectory must supply rules for building sources it contributes
code/lvgl/src/widgets/%.src: ../code/lvgl/src/widgets/%.c code/lvgl/src/widgets/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc26xb "-fF:/smartcar/TC264_Library-master/Seekfree_TC264_Opensource_Library/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc26xb -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/code\/lvgl\/src\/widgets\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

code/lvgl/src/widgets/%.o: ./code/lvgl/src/widgets/%.src code/lvgl/src/widgets/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-code-2f-lvgl-2f-src-2f-widgets

clean-code-2f-lvgl-2f-src-2f-widgets:
	-$(RM) ./code/lvgl/src/widgets/lv_arc.d ./code/lvgl/src/widgets/lv_arc.o ./code/lvgl/src/widgets/lv_arc.src ./code/lvgl/src/widgets/lv_bar.d ./code/lvgl/src/widgets/lv_bar.o ./code/lvgl/src/widgets/lv_bar.src ./code/lvgl/src/widgets/lv_btn.d ./code/lvgl/src/widgets/lv_btn.o ./code/lvgl/src/widgets/lv_btn.src ./code/lvgl/src/widgets/lv_btnmatrix.d ./code/lvgl/src/widgets/lv_btnmatrix.o ./code/lvgl/src/widgets/lv_btnmatrix.src ./code/lvgl/src/widgets/lv_canvas.d ./code/lvgl/src/widgets/lv_canvas.o ./code/lvgl/src/widgets/lv_canvas.src ./code/lvgl/src/widgets/lv_checkbox.d ./code/lvgl/src/widgets/lv_checkbox.o ./code/lvgl/src/widgets/lv_checkbox.src ./code/lvgl/src/widgets/lv_dropdown.d ./code/lvgl/src/widgets/lv_dropdown.o ./code/lvgl/src/widgets/lv_dropdown.src ./code/lvgl/src/widgets/lv_img.d ./code/lvgl/src/widgets/lv_img.o ./code/lvgl/src/widgets/lv_img.src ./code/lvgl/src/widgets/lv_label.d ./code/lvgl/src/widgets/lv_label.o ./code/lvgl/src/widgets/lv_label.src ./code/lvgl/src/widgets/lv_line.d ./code/lvgl/src/widgets/lv_line.o ./code/lvgl/src/widgets/lv_line.src ./code/lvgl/src/widgets/lv_objx_templ.d ./code/lvgl/src/widgets/lv_objx_templ.o ./code/lvgl/src/widgets/lv_objx_templ.src ./code/lvgl/src/widgets/lv_roller.d ./code/lvgl/src/widgets/lv_roller.o ./code/lvgl/src/widgets/lv_roller.src ./code/lvgl/src/widgets/lv_slider.d ./code/lvgl/src/widgets/lv_slider.o ./code/lvgl/src/widgets/lv_slider.src ./code/lvgl/src/widgets/lv_switch.d ./code/lvgl/src/widgets/lv_switch.o ./code/lvgl/src/widgets/lv_switch.src ./code/lvgl/src/widgets/lv_table.d ./code/lvgl/src/widgets/lv_table.o ./code/lvgl/src/widgets/lv_table.src ./code/lvgl/src/widgets/lv_textarea.d ./code/lvgl/src/widgets/lv_textarea.o ./code/lvgl/src/widgets/lv_textarea.src

.PHONY: clean-code-2f-lvgl-2f-src-2f-widgets

