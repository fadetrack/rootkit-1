#include <linux/module.h>   // For modules
#include <linux/kernel.h>   // For KERN_INFO
#include <linux/init.h>     // For init macros

#include "logInput.h"
#include "outputDevice.h"

int __init logInput_init(void) {
	// unimplemented
	addToOutputDevice("Logging input!");
	return 0;
}

int __exit logInput_exit(void) {
	return 0; // unimplemented
}
