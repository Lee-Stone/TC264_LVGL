################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/lvgl/src/extra/others/snapshot/lv_snapshot.c 

COMPILED_SRCS += \
./code/lvgl/src/extra/others/snapshot/lv_snapshot.src 

C_DEPS += \
./code/lvgl/src/extra/others/snapshot/lv_snapshot.d 

OBJS += \
./code/lvgl/src/extra/others/snapshot/lv_snapshot.o 


# Each subdirectory must supply rules for building sources it contributes
code/lvgl/src/extra/others/snapshot/%.src: ../code/lvgl/src/extra/others/snapshot/%.c code/lvgl/src/extra/others/snapshot/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc26xb "-fF:/smartcar/TC264_Library-master/Seekfree_TC264_Opensource_Library/Debug/TASKING_C_C___Compiler-Include_paths.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc26xb -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/code\/lvgl\/src\/extra\/others\/snapshot\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

code/lvgl/src/extra/others/snapshot/%.o: ./code/lvgl/src/extra/others/snapshot/%.src code/lvgl/src/extra/others/snapshot/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-code-2f-lvgl-2f-src-2f-extra-2f-others-2f-snapshot

clean-code-2f-lvgl-2f-src-2f-extra-2f-others-2f-snapshot:
	-$(RM) ./code/lvgl/src/extra/others/snapshot/lv_snapshot.d ./code/lvgl/src/extra/others/snapshot/lv_snapshot.o ./code/lvgl/src/extra/others/snapshot/lv_snapshot.src

.PHONY: clean-code-2f-lvgl-2f-src-2f-extra-2f-others-2f-snapshot

