// This file is part of MCF gthread.
// See LICENSE.TXT for licensing information.
// Copyleft 2022, LH_Mouse. All wrongs reserved.

#include "../src/cxa.h"
#include <assert.h>
#include <stdio.h>
#include <string.h>

static char buffer[1000];
static int dso_1, dso_2;

static void __cdecl
cleanup_1(void* ptr)
  {
    strcat(buffer, ptr);
  }

static void __thiscall
cleanup_2(void* ptr)
  {
    strcat(buffer, ptr);
  }

int
main(void)
  {
    int r;

    r = __cxa_atexit(cleanup_1, (void*) "a1", &dso_1);
    assert(r == 0);
    r = __cxa_atexit(cleanup_1, (void*) "b2", &dso_2);
    assert(r == 0);
    r = __cxa_atexit(cleanup_1, (void*) "c1", &dso_1);
    assert(r == 0);
    r = __cxa_atexit(cleanup_1, (void*) "dN", NULL);
    assert(r == 0);
    r = __cxa_atexit(cleanup_2, (void*) "e2", &dso_2);
    assert(r == 0);
    r = __cxa_atexit(cleanup_2, (void*) "f1", &dso_1);
    assert(r == 0);
    r = __cxa_atexit(cleanup_2, (void*) "g1", &dso_1);
    assert(r == 0);
    r = __cxa_atexit(cleanup_2, (void*) "hN", NULL);
    assert(r == 0);
    r = __cxa_atexit(cleanup_1, (void*) "i1", &dso_1);
    assert(r == 0);
    r = __cxa_atexit(cleanup_1, (void*) "j1", &dso_1);
    assert(r == 0);
    r = __cxa_atexit(cleanup_1, (void*) "k2", &dso_2);
    assert(r == 0);
    r = __cxa_atexit(cleanup_1, (void*) "lN", NULL);
    assert(r == 0);
    r = __cxa_atexit(cleanup_2, (void*) "m1", &dso_1);
    assert(r == 0);
    r = __cxa_atexit(cleanup_2, (void*) "n2", &dso_2);
    assert(r == 0);
    r = __cxa_atexit(cleanup_2, (void*) "o2", &dso_2);
    assert(r == 0);
    r = __cxa_atexit(cleanup_2, (void*) "pN", NULL);
    assert(r == 0);

    assert(strcmp(buffer, "") == 0);
    __cxa_finalize(NULL);
    assert(strcmp(buffer, "pNo2n2m1lNk2j1i1hNg1f1e2dNc1b2a1") == 0);
  }
