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
int ckb_checked_load_input(void* addr, uint64_t* len, size_t offset,
                           size_t index, size_t source) {
  uint64_t old_len = *len;
  int ret = ckb_load_input(addr, len, offset, index, source);
  if (ret == CKB_SUCCESS && (*len) > old_len) {
    ret = CKB_LENGTH_NOT_ENOUGH;
  }
  return ret;
}
int ckb_checked_load_cell_data(void* addr, uint64_t* len, size_t offset,
                               size_t index, size_t source) {
  uint64_t old_len = *len;
  int ret = ckb_load_cell_data(addr, len, offset, index, source);
  if (ret == CKB_SUCCESS && (*len) > old_len) {
    ret = CKB_LENGTH_NOT_ENOUGH;
  }
  return ret;
}
int ckb_look_for_dep_with_hash2(const uint8_t* code_hash, uint8_t hash_type,
                                size_t* index) {
  size_t current = 0;
  size_t field =
      (hash_type == 1) ? CKB_CELL_FIELD_TYPE_HASH : CKB_CELL_FIELD_DATA_HASH;
  while (current < SIZE_MAX) {
    uint64_t len = 32;
    uint8_t hash[32];

    int ret = ckb_load_cell_by_field(hash, &len, 0, current,
                                     CKB_SOURCE_CELL_DEP, field);
    switch (ret) {
      case CKB_ITEM_MISSING:
        break;
      case CKB_SUCCESS:
        if (memcmp(code_hash, hash, 32) == 0) {
          /* Found a match */
          *index = current;
          return CKB_SUCCESS;
        }
        break;
      default:
        return CKB_INDEX_OUT_OF_BOUND;
    }
    current++;
  }
  return CKB_INDEX_OUT_OF_BOUND;
}

int ckb_checked_load_cell_by_field(void* addr, uint64_t* len, size_t offset,
                                   size_t index, size_t source, size_t field) {
  uint64_t old_len = *len;
  int ret = ckb_load_cell_by_field(addr, len, offset, index, source, field);
  if (ret == CKB_SUCCESS && (*len) > old_len) {
    ret = CKB_LENGTH_NOT_ENOUGH;
  }
  return ret;
}


int ckb_checked_load_witness(void* addr, uint64_t* len, size_t offset,
                             size_t index, size_t source) {
  uint64_t old_len = *len;
  int ret = ckb_load_witness(addr, len, offset, index, source);
  if (ret == CKB_SUCCESS && (*len) > old_len) {
    ret = CKB_LENGTH_NOT_ENOUGH;
  }
  return ret;
}

#endif
