#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

MODULE_INFO(intree, "Y");

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0xaf25c634, __VMLINUX_SYMBOL_STR(module_layout) },
	{ 0xe6c12ded, __VMLINUX_SYMBOL_STR(crypto_rng_type) },
	{ 0xb6b46a7c, __VMLINUX_SYMBOL_STR(param_ops_int) },
	{ 0xa35017c0, __VMLINUX_SYMBOL_STR(crypto_unregister_algs) },
	{ 0xf1cbca40, __VMLINUX_SYMBOL_STR(crypto_register_algs) },
	{ 0x71c90087, __VMLINUX_SYMBOL_STR(memcmp) },
	{ 0x4059792f, __VMLINUX_SYMBOL_STR(print_hex_dump) },
	{ 0x5dc3cfd2, __VMLINUX_SYMBOL_STR(crypto_alloc_base) },
	{ 0x1e06d7c2, __VMLINUX_SYMBOL_STR(__raw_spin_lock_init) },
	{ 0xe7f80cb4, __VMLINUX_SYMBOL_STR(_raw_spin_unlock_bh) },
	{ 0x27e1a049, __VMLINUX_SYMBOL_STR(printk) },
	{ 0xfa2a45e, __VMLINUX_SYMBOL_STR(__memzero) },
	{ 0xac094ff8, __VMLINUX_SYMBOL_STR(_raw_spin_lock_bh) },
	{ 0xefd6cf06, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr0) },
	{ 0xa77130d4, __VMLINUX_SYMBOL_STR(crypto_destroy_tfm) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=rng";

