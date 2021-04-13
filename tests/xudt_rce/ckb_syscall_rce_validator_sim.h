// note, this macro must be same as in ckb_syscall.h
#ifndef CKB_C_STDLIB_CKB_SYSCALLS_H_
#define CKB_C_STDLIB_CKB_SYSCALLS_H_

#include <stddef.h>
#include <stdint.h>

int ckb_exit(int8_t code) { return 0; }
int ckb_load_tx_hash(void* addr, uint64_t* len, size_t offset) { return 0; }
int ckb_load_transaction(void* addr, uint64_t* len, size_t offset){ return 0; }
int ckb_load_script_hash(void* addr, uint64_t* len, size_t offset){ return 0; }
int ckb_load_script(void* addr, uint64_t* len, size_t offset){ return 0; }
int ckb_debug(const char* s){ return 0; }

int ckb_load_cell(void* addr, uint64_t* len, size_t offset, size_t index,
                  size_t source){ return 0; }
int ckb_load_input(void* addr, uint64_t* len, size_t offset, size_t index,
                   size_t source){ return 0; }
int ckb_load_header(void* addr, uint64_t* len, size_t offset, size_t index,
                    size_t source){ return 0; }
int ckb_load_witness(void* addr, uint64_t* len, size_t offset, size_t index,
                     size_t source){ return 0; }
int ckb_load_cell_by_field(void* addr, uint64_t* len, size_t offset,
                           size_t index, size_t source, size_t field){ return 0; }
int ckb_load_header_by_field(void* addr, uint64_t* len, size_t offset,
                             size_t index, size_t source, size_t field){ return 0; }
int ckb_load_input_by_field(void* addr, uint64_t* len, size_t offset,
                            size_t index, size_t source, size_t field){ return 0; }
int ckb_load_cell_data(void* addr, uint64_t* len, size_t offset, size_t index,
                       size_t source){ return 0; }

int ckb_dlopen2(const uint8_t* dep_cell_hash, uint8_t hash_type,
                uint8_t* aligned_addr, size_t aligned_size, void** handle,
                size_t* consumed_size){ return 0; }
void* ckb_dlsym(void* handle, const char* symbol){ return 0; }

#endif
