/* This file is part of MCF Gthread.
 * See LICENSE.TXT for licensing information.
 * Copyleft 2022, LH_Mouse. All wrongs reserved.  */

#ifndef __MCFGTHREAD_EXIT_
#define __MCFGTHREAD_EXIT_

#include "fwd.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifndef __MCF_EXIT_EXTERN_INLINE
#  define __MCF_EXIT_EXTERN_INLINE  __MCF_GNU_INLINE
#endif

/* Declare 'real' functions here.  */
void
__MCF__Exit(int __status) __MCF_NOEXCEPT
  __attribute__((__noreturn__));

void
__MCF_quick_exit(int __status) __MCF_NOEXCEPT
  __attribute__((__noreturn__));

void
__MCF_exit(int __status) __MCF_NOEXCEPT
  __attribute__((__noreturn__));

#ifdef __cplusplus
}
#endif

#endif  /* __MCFGTHREAD_EXIT_  */
