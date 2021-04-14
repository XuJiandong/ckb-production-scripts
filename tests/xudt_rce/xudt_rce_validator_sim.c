#if defined(CKB_COVERAGE)
#define ASSERT(s) (void)0
#else
#define ASSERT(s) (void)0
#endif

int ckb_exit(signed char code);

#include "utest.h"
#include "rce_validator.c"

// make compiler happy
int make_cursor_from_witness(WitnessArgsType* witness) {
  ASSERT(false);
  return 0;
}

UTEST(rec_validator, main) {
  int err = 0;

  err = simulator_main();

exit:
  ASSERT_EQ(err, 0);
}

UTEST_MAIN();
