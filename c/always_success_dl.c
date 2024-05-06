#include <stddef.h>
#include <stdint.h>


__attribute__((visibility("default"))) int validate_signature(
    void *prefilled_data, const uint8_t *sig_buf, size_t sig_len,
    const uint8_t *msg_buf, size_t msg_len, uint8_t *output,
    size_t *output_len) {
    memset(output, 0, 20);
    *output_len = 20;
    return 0;
}

__attribute__((visibility("default"))) int load_prefilled_data(void *data,
                                                               size_t *len) {
    return 0;
}
