#include <linux/module.h>   // For modules
#include <linux/kernel.h>   // For KERN_INFO
#include <linux/init.h>     // For init macros

#include "moduleHide.h"

int __init moduleHide_init(void) {
	return 0; // unimplemented 
}
int __exit moduleHide_exit(void) {
	return 0; // unimplemented 
}


