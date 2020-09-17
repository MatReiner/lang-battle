#include "internal/default.h"
#include "1io.vo.h"
;
;
;
i32 (^v0_main)(void) = ^i32 (void){
	v1_println("Hi");
	return 0;
};
;

int main() {
	return v0_main();
}